import tensorflow.keras.models
import numpy as np
import tensorflow as tf
import pickle

motion_keys = {0 : "HopLeft", 1 : "HopRight"}
model = tensorflow.keras.models.load_model(r".\Models\hops_model") #loaded model

motions = pickle.load(open(r"./Testing_Data/hops_motions_test.pickle", "rb"))
labels 	= pickle.load(open(r"./Testing_Data/hops_motions_labels.pickle", "rb"))

total_entries = len(motions)
total_correct = 0
i = 0

frames = list()
framelabels = list()
total_frames = 0
for i, motion in enumerate(motions):
	print("Hop", i , ":", motion_keys[labels[i]], ":", len(motion), "frames.")
	total_frames += len(motion)
	guessed_motions = [0, 0]
	if len(motion) > 1:
		for frame in motion:
			a = np.ones((1, 20, 5))
			a[0] = frame
			confidences = model.predict(a)
			#if the model is at least 92% confident in its decision
			if confidences[0][np.argmax(confidences[0])] > 0.92:
				guessed_motions[np.argmax(confidences[0])] += 1
		print(guessed_motions)
		print("Read as", motion_keys[np.argmax(guessed_motions)])
		if np.argmax(guessed_motions) == labels[i]:
			total_correct += 1
		print("Total Accuracy :", (total_correct/(i+1)) * 100, "%\n")

print("\nTotal Incorrect:", total_entries-total_correct, "/", total_entries)
print("Model Accuracy   :", (total_correct/total_entries) * 100, "%")
print("Frames Analyzed  :", total_frames)