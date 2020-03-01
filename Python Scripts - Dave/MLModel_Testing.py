import tensorflow.keras.models
import numpy as np
import pickle
import os
import fnmatch
import tensorflow as tf

motion_keys = {0 : "HopLeft", 1 : "HopRight", 2 : "JogSpot", 3 : "JumpSide", 4 : "JumpForward", 5 : "JumpHigh"}
layer_1_keys = {0 : "Hop", 1 : "JogSpot", 2 : "JumpSide", 3 : "Jump"}
layer_2_hops_keys = {0 : "HopLeft", 1 : "HopRight"}

model = tensorflow.keras.models.load_model(r".\Models\layer1_model") #loaded model
hops_model = tensorflow.keras.models.load_model(r".\Models\hops_model")
jumps_model = tensorflow.keras.models.load_model(r".\Models\jumps_model")

motions = pickle.load(open(r"./Testing_Data/test_motions.pickle", "rb"))
labels 	= pickle.load(open(r"./Testing_Data/test_labels.pickle", "rb"))
total_entries = len(motions)
total_correct = 0
i = 0

frames = []
framelabels = []
total_frames = 0

for i, motion in enumerate(motions):
	print("Motion", i , ":", motion_keys[labels[i]], "-", len(motion), "frames.")
	print("-\tApproximate Analysis Time :", round((0.025 * len(motion)), 3), "s.")
	total_frames += len(motion)
	guessed_motions = [0, 0, 0, 0, 0, 0]
	if len(motion) > 1:
		for frame in motion:
			a = np.ones((1, 20, 5))
			a[0] = frame
			confidences = model.predict(a)
			#if the model is at least 92% confident in its decision
			if confidences[0][np.argmax(confidences[0])] > 0.92:
				if np.argmax(confidences[0]) == 0 : #If it is read as a hop
					hops_con = hops_model.predict(a)
					#print("Hop:", hops_con)
					if hops_con[0] < 0.2 : #If it is 92% confident and read as a hopleft
						guessed_motions[0] += 1
					if hops_con[0] > 0.8 : #If it is 92% confident and read as a hopright
						guessed_motions[1] += 1
				elif np.argmax(confidences[0]) == 3 : #If it is read as a jump
					jumps_con = jumps_model.predict(a)
					#print("Jump:", jumps_con)
					if jumps_con[0] < 0.2 : #If it is 92% confident and read as a jumpforward
						guessed_motions[4] += 1
					if jumps_con[0] > 0.8 : #If it is 92% confident and read as a jumpside
						guessed_motions[5] += 1
				elif np.argmax(confidences[0]) == 1 : #If it is read as a Jogspot
					guessed_motions[2] += 1
				elif np.argmax(confidences[0]) == 2 : #If it is read as a JumpSide
					guessed_motions[3] += 1
		print(guessed_motions)
		total_frames_read = 0

		#Check how many frames were actually read
		for x in guessed_motions:
			total_frames_read += x
		if len(motion) / 10 > total_frames_read:
			print("Less than 10% of frames confidently identified. Data may be unreliable.")

		print("Read as", motion_keys[np.argmax(guessed_motions)])
		if np.argmax(guessed_motions) == labels[i]:
			total_correct += 1
		else:
			print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMismatch")
		print("Total Accuracy :", total_correct/(i+1) * 100, "%\n")
	else:
		total_correct += 1
print("Total Incorrect  :", total_entries-total_correct, "/", total_entries)
print("Model Accuracy   :", (total_correct/total_entries) * 100, "%")
print("Frames Analyzed  :", total_frames)