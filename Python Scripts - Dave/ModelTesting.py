import tensorflow.keras.models
import numpy as np
import pickle
import os
import fnmatch
import tensorflow as tf
motion_keys = {0 : "HopLeft", 1 : "HopRight", 2 : "JogSpot", 3 : "JumpForward", 4 : "JumpHigh", 5 : "JumpSide"}
model = tensorflow.keras.models.load_model(r".\Models\Current Model\current_model") #loaded model

print("Filepathing started...")
filepaths = list()
for i,j,y in os.walk('Uncompressed'):
	for n in y:
		if fnmatch.fnmatch(n, '*.pickle'):
			filepaths.append(str(i) + "\\" + str(y[1]))
print("Filepathing finished. Loading frame data...")

total_entries = len(filepaths);
total_correct = 0;

import random
random.shuffle(filepaths)
i = 0

for path in filepaths:
	try:
		t_motion = pickle.load(open(path, "rb"))
		t_frames = list()

		for frame in t_motion:
			t_frames.append(frame)
		t_frames = np.stack(t_frames)

		confidences = model.predict(t_frames)
		guesssed_motions = [0, 0, 0, 0, 0, 0]
		for x in confidences:
			guesssed_motions[np.argmax(x)] += 1
		
		i+=1

		if motion_keys[np.argmax(guesssed_motions)] == "HopLeft" and "HopLeft" in path:
			total_correct +=1
		elif motion_keys[np.argmax(guesssed_motions)] == "HopRight" and "HopRight" in path:
			total_correct +=1
		elif motion_keys[np.argmax(guesssed_motions)] == "JogSpot" and "JogSpot" in path:
			total_correct +=1
		elif motion_keys[np.argmax(guesssed_motions)] == "JumpForward" and "JumpForward" in path:
			total_correct +=1
		elif motion_keys[np.argmax(guesssed_motions)] == "JumpHigh" and "JumpHigh" in path:
			total_correct +=1
		elif motion_keys[np.argmax(guesssed_motions)] == "JumpSide" and "JumpSide" in path:
			total_correct +=1
		else:
			print("\nMotion", i)
			print("Most Likely:", motion_keys[np.argmax(guesssed_motions)])
			print("Mismatch on motion -", path)
			p = ""
			if "HopLeft" in path:
				p = "HopLeft"
			elif "JogSpot" in path:
				p = "JogSpot"
			elif "HopRight" in path:
				p = "HopRight"
			elif "JumpForward" in path:
				p = "JumpForward"
			elif "JumpHigh" in path:
				p = "JumpHigh"
			elif "JumpSide" in path:
				p = "JumpSide"
			print("Actually :", p)
	except Exception as e:
		print("\t\t SHAPE ERROR:",path)

print("\nTotal Incorrect:", total_entries-total_correct, "/", total_entries)
print("Model Accuracy :", (total_correct/total_entries) * 100, "%")