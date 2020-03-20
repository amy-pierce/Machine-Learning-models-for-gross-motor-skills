import json
import re
import numpy as np
import pickle
import os
import fnmatch
import math
from PyQt5.QtWidgets import QApplication

class Parser:

	def __init__(self,folder):
		self.folder = folder


	def parse(self,progress):
		files = list()
		if(".json" in self.folder):
			path = self.folder.split("")
			path = path[:-1]
			pathn = ""
			for tmp in path:
				pathn += tmp + ""
			files.append(pathn)
		else:
			for i,j,y in os.walk(self.folder):
				for n in y:
					if fnmatch.fnmatch(n, '*.json'):
						files.append(str(i))

		pickleName = list()
		progress.pB.setValue(2)
		pamount = len(files)
		for filename in files:
			# try:
				#Whole data file
				namestring = filename + "//skeleton.json"
				tpath = namestring.replace("/",'\\')
				progress.label.setText("Parsing " + tpath)
				data = json.load(open(namestring))

				#Convert ground coordinates into an array of floats
				ground_coordinates = data["g"]
				ground_coordinates = re.findall(r"[-+]?\d*\.\d+|\d+", ground_coordinates)
				for i, n in enumerate(ground_coordinates):
					ground_coordinates[i] = float(n)

				#get offset as a float
				offset = float(data["o"])

				ground_coordinates.append(offset)

				#convert tracking data into a json file
				unf = data["t"]
				unf.replace("\\", "") #Remove backslashes from file to unescape ""
				namestring = filename + "//track.json"
				track = open(namestring, 'w')	#create new tracking data json document
				track.write(unf)
				items = json.load(open(namestring))

				motion = list()
				for frame in items['Items']: # for each individual frame of the skeleton.json file
					#final frame data, appended to the motion
					framedata = list()
					framedata.append(ground_coordinates)
					#includes list of whether the tracking is picking up
					tracking = list()
					for t in frame['b']['j']:
						tracking.append(t['s'])

					#includes list of position coordinates of each joint
					j = 0
					for position in frame['b']['j']:
						posCoords = position['p']
						posCoords = re.findall(r"[-+]?\d*\.\d+|\d+", posCoords)
						for i, n in enumerate(posCoords):
							posCoords[i] = float(n)
						posCoords.append(0.0)
						posCoords.append(float(tracking[j]))
						j+=1
						framedata.append(posCoords)


					#Add the full frame data to the motion
					motion.append(framedata)


				namestring = filename + "/tensor.pickle"
				if namestring not in pickleName:
					pickleName.append(namestring)
				if len(motion) != 0:
					motion = np.array(motion)
					print("Writing to", namestring)
					progress.label.setText("Writing to " + namestring)
					pickle_out = open(namestring, "wb")
					pickle.dump(motion, pickle_out)
					pickle_out.close()
				else:
					print("0 length file found :", namestring)
				QApplication.processEvents()
				progress.pB.setValue(progress.pB.value() + math.floor((1/pamount) * 20))
				QApplication.processEvents()

			# except Exception as e:
			# 	print("\t\t\tv ERROR ON BELOW v")
			# 	print(e)

		progress.pB.setValue(20)
		print("Compilaiton finished")
		return pickleName