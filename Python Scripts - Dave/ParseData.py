import json
import re
import numpy as np
import pickle
import os
import fnmatch

files = list()
for i,j,y in os.walk('Uncompressed'):
	for n in y:
		if fnmatch.fnmatch(n, 'skeleton.json'):
			files.append(str(i))

for filename in files:
	try:
		#Whole data file
		namestring = filename + "\\skeleton.json"
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
		namestring = filename + "\\track.json"
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
			''' #Add rotational tracking
			j = 0 
			#includes list of rotation offsets of each joint
			for rotation in frame['b']['j']:
				eulerVals = rotation['o']
				eulerVals = re.findall(r"[-+]?\d*\.\d+|\d+", eulerVals)
				for i, n in enumerate(eulerVals):
					eulerVals[i] = float(n)
				eulerVals.append(tracking[j])
				j+=1
				framedata.append(eulerVals)
			'''
			#Add the full frame data to the motion
			motion.append(framedata)

		#Trims motion such that they are all divisible by 10
		
		namestring = filename + "\\tensor.pickle"
		if len(motion) != 0:
			motion = np.array(motion)
			print("Writing to", namestring)
			pickle_out = open(namestring, "wb")
			pickle.dump(motion, pickle_out)
			pickle_out.close()
		else:
			print("0 length file found :", namestring)

	except Exception as e:
		print("\t\t\tv ERROR ON BELOW v")
		print(e)

print("Compilaiton finished")