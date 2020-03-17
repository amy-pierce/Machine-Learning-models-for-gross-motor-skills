import tensorflow.keras.models
import numpy as np
import pickle
import os
import fnmatch
import tensorflow as tf
import math
import timeit
from PyQt5.QtWidgets import QApplication


class Testing:

	def __init__(self,filepaths):
		self.filepaths = filepaths
		print(filepaths)
		self.i = 0

	def analyse(self,progress):
		startTime = timeit.default_timer()
		self.results = list() 
		self.motion_keys = {0 : "HopLeft", 1 : "HopRight", 2 : "JogSpot", 3 : "JumpSide", 4 : "JumpForward", 5 : "JumpHigh"}
		self.layer_1_keys = {0 : "Hop", 1 : "JogSpot", 2 : "JumpSide", 3 : "Jump"}
		self.layer_2_hops_keys = {0 : "HopLeft", 1 : "HopRight"}
		print(tf.config.experimental.list_physical_devices('GPU'))

		progress.label.setText("Loading models...")

		pcount = 20
		QApplication.processEvents()
		self.model = tensorflow.keras.models.load_model(r".\Models\layer_1_model") #loaded model
		QApplication.processEvents()
		self.hops_model = tensorflow.keras.models.load_model(r".\Models\hops_model")
		QApplication.processEvents()
		self.jumps_model = tensorflow.keras.models.load_model(r".\Models\jumps_model")
		QApplication.processEvents()

		fileNum = 0
		frameCount = 0
		totalFrame = 0
		frameTillNow = 0
		pamount = len(self.filepaths)
		motions = list()
		for path in self.filepaths:			
				motion = pickle.load(open(path, "rb"))
				motions.append(motion)
		for t_motion in motions:
				totalFrame += len(t_motion)
		for t_motion in motions:
				path = self.filepaths[fileNum]
				tpath = path.replace('/','\\')
				progress.label.setText("Analyzing " + tpath)
				result = list()	
				guessed_motions = [0, 0, 0, 0, 0, 0]
				if len(t_motion) > 1:
					for frame in t_motion:
						if frame.shape == (20,5):
							a = np.ones((1, 20, 5))
							a[0] = frame
							QApplication.processEvents()
							confidences = self.model.predict(a)
							QApplication.processEvents()
							#if the model is at least 92% confident in its decision
							if confidences[0][np.argmax(confidences[0])] > 0.92:
								if np.argmax(confidences[0]) == 0 : #If it is read as a hop
									QApplication.processEvents()
									hops_con = self.hops_model.predict(a)
									QApplication.processEvents()
									#print("Hop:", hops_con)
									if hops_con[0] < 0.2 : #If it is 92% confident and read as a hopleft
										guessed_motions[0] += 1
									if hops_con[0] > 0.8 : #If it is 92% confident and read as a hopright
										guessed_motions[1] += 1
								elif np.argmax(confidences[0]) == 3 : #If it is read as a jump
									QApplication.processEvents()
									jumps_con = self.jumps_model.predict(a)
									QApplication.processEvents()
									#print("Jump:", jumps_con)
									if jumps_con[0] < 0.2 : #If it is 92% confident and read as a jumpforward
										guessed_motions[4] += 1
									if jumps_con[0] > 0.8 : #If it is 92% confident and read as a jumpside
										guessed_motions[5] += 1
								elif np.argmax(confidences[0]) == 1 : #If it is read as a Jogspot
									guessed_motions[2] += 1
								elif np.argmax(confidences[0]) == 2 : #If it is read as a JumpSide
									guessed_motions[3] += 1
						if pamount <= 80:
							pcount += (math.floor((1/pamount) * 80)/len(t_motion))
							QApplication.processEvents()
							progress.pB.setValue(math.floor(pcount))
							QApplication.processEvents()

						frameTillNow += 1

						if frameCount < 50:
							frameCount += 1
						else:
							stopTime = timeit.default_timer()
							time = stopTime - startTime
							totalTime = (time/frameTillNow) * (totalFrame-frameTillNow)
							frameCount = 0
							QApplication.processEvents()
							if totalTime < 60:
								progress.time.setText("Time Left: " + str(math.floor(totalTime)) + " seconds")
							else:
								mi = math.floor(totalTime/60)
								progress.time.setText("Time Left: " + str(mi) + " minutes" + " and " + str(math.floor(totalTime) - mi*60) + " seconds")							
							QApplication.processEvents()





				print(guessed_motions)
				total_frames_read = 0
				#Check how many frames were actually read
				for x in guessed_motions:
					total_frames_read += x
				reliable = True
				if len(t_motion) / 10 > total_frames_read:
					reliable = False
					print("Less than 10% of frames confidently identified. Data may be unreliable.")

				
				self.i+=1
				QApplication.processEvents()
				file_name = path.split('\\')
				if(len(file_name)>2):
					rootFolder = file_name[0].split('/')
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

				fileNum = fileNum + 1
				guessedIndex = np.argmax(guessed_motions)
				surePercentage = str(100*round((guessed_motions[guessedIndex]/np.sum(guessed_motions)),2))
				result.append(file_name)
				if reliable == True:
					result.append(surePercentage)
				else:
					result.append("unreliable data")
					result.append("unreliable")
					self.results.append(result)
					return self.results
					
					
				
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

				if pamount > 80:
					pcount += 80/pamount
					progress.pB.setValue(math.floor(pcount))
					QApplication.processEvents()


		progress.pB.setValue(100)
		progress.label.setText("Done.")



		return self.results