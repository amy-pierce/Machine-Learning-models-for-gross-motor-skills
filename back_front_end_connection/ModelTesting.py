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

				if self.motion_keys[np.argmax(guesssed_motions)] == "HopLeft":
					self.output.write("HopLeft\n")
				elif self.motion_keys[np.argmax(guesssed_motions)] == "HopRight":
					self.output.write("HopRight\n")
				elif self.motion_keys[np.argmax(guesssed_motions)] == "JogSpot":
					self.output.write("JogSpot\n")
				elif self.motion_keys[np.argmax(guesssed_motions)] == "JumpForward":
					self.output.write("JumpForward\n")
				elif self.motion_keys[np.argmax(guesssed_motions)] == "JumpHigh":
					self.output.write("JumpHigh\n")
				elif self.motion_keys[np.argmax(guesssed_motions)] == "JumpSide":
					self.output.write("JumpSide\n")
				else:
					print("\nMotion", self.i)
					print("Most Likely:", self.motion_keys[np.argmax(guesssed_motions)])
					self.output.write("Most Likely:", self.motion_keys[np.argmax(guesssed_motions)])


		self.output.close()