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
		self.results = list() 
		self.motion_keys = {0 : "HopLeft", 1 : "HopRight", 2 : "JogSpot", 3 : "JumpForward", 4 : "JumpHigh", 5 : "JumpSide"}
		self.model = tensorflow.keras.models.load_model(r".\Current Model\current_model") #loaded model
		for path in self.filepaths:
				result = list()
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
				file_name = path.split('\\')
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
				result.append(file_name)
				result.append(surePercentage)
				if self.motion_keys[guessedIndex] == "HopLeft":
					result.append("HopLeft")
				elif self.motion_keys[guessedIndex] == "HopRight":
					result.append("HopRight")
				elif self.motion_keys[guessedIndex] == "JogSpot":
					result.append("JogSpot")
				elif self.motion_keys[guessedIndex] == "JumpForward":
					result.append("JumpForward")
				elif self.motion_keys[guessedIndex] == "JumpHigh":
					result.append("JumpHigh")
				elif self.motion_keys[guessedIndex] == "JumpSide":
					result.append("JumpSide")
				self.results.append(result)


		return self.results