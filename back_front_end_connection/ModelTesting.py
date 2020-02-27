import tensorflow.keras.models
import numpy as np
import pickle
import os
import fnmatch
import tensorflow as tf

class Testing:

	def __init__(self,filepaths):
		self.filepaths = filepaths
		print(filepaths)
		self.i = 0

	def analyse(self):
		self.motion_keys = {0 : "HopLeft", 1 : "HopRight", 2 : "JogSpot", 3 : "JumpForward", 4 : "JumpHigh", 5 : "JumpSide"}
		self.model = tensorflow.keras.models.load_model(r".\Current Model\current_model") #loaded model
		self.output = open("output.txt","w")
		for path in self.filepaths:

				t_motion = pickle.load(open(path, "rb"))
				t_frames = list()

				for frame in t_motion:
					t_frames.append(frame)
				t_frames = np.stack(t_frames)

				confidences = self.model.predict(t_frames)
				guesssed_motions = [0, 0, 0, 0, 0, 0]
				for x in confidences:
					guesssed_motions[np.argmax(x)] += 1
				
				self.i+=1
				print(path)
				file_name = path.split('\\')
				print(file_name)
				if(len(file_name)>2):
					rootFolder = file_name[0].split('/')
					print(rootFolder)
					rootFolder = rootFolder[-1]
					rootFolder += '/'
					if(len(file_name) > 1):
						file_name = file_name[1:]
					for tmp in file_name:
						rootFolder += tmp + '/'
					rootFolder = rootFolder[:-1]
					file_name = rootFolder
					file_name.replace('\\','/')
				else:
					file_name = path
					file_name.replace('\\','/')
				guessedIndex = np.argmax(guesssed_motions)
				surePercentage = str(100*round((guesssed_motions[guessedIndex]/np.sum(guesssed_motions)),2))
				if self.motion_keys[guessedIndex] == "HopLeft":
					self.output.write(file_name +" is " + surePercentage + "% " + "HopLeft\n")
				elif self.motion_keys[guessedIndex] == "HopRight":
					self.output.write(file_name +" is " + surePercentage + "% " + "HopRight\n")
				elif self.motion_keys[guessedIndex] == "JogSpot":
					self.output.write(file_name +" is " + surePercentage + "% " + "JogSpot\n")
				elif self.motion_keys[guessedIndex] == "JumpForward":
					self.output.write(file_name +" is " + surePercentage + "% " + "JumpForward\n")
				elif self.motion_keys[guessedIndex] == "JumpHigh":
					self.output.write(file_name +" is " + surePercentage + "% " + "JumpHigh\n")
				elif self.motion_keys[guessedIndex] == "JumpSide":
					self.output.write(file_name +" is " + surePercentage + "% " + "JumpSide\n")
				else:
					self.output.write("Most Likely:", self.motion_keys[np.argmax(guesssed_motions)])


		self.output.close()