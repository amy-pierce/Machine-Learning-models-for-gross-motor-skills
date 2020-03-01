import os
import fnmatch
import pickle
import numpy as np
import random

pct = 0.8

print("Filepathing started...")
filepaths = list()
for i,j,y in os.walk('Uncompressed'):
	for n in y:
		if fnmatch.fnmatch(n, '*.pickle'):
			filepaths.append(str(i) + "\\" + str(y[1]))
print("Filepathing finished. Loading frame data...")

#Load each frame into a list of numpy.ndarray objects
random.shuffle(filepaths)

#first 80% of filepaths are set as training data
train_frames = []
train_labels = []

#hops training data
hops_train = []
hops_labels = []

#jumps training data
jumps_train = []
jumps_labels = []

#for the first 80% of the paths
for path in filepaths[:int(len(filepaths)*pct)]:
	motion = pickle.load(open(path, "rb"))
	for frame in motion:
		if frame.shape == (20, 5):
			train_frames.append(frame)
			if "HopLeft" in path or "HopRight" in path:
				train_labels.append(0)
				hops_train.append(frame)
				if "HopLeft" in path:
					hops_labels.append(0)
				if "HopRight" in path:
					hops_labels.append(1)
			elif "JogSpot" in path:
				train_labels.append(1)
			elif "JumpSide" in path:
				train_labels.append(2)
			elif "JumpForward" in path or "JumpHigh" in path:
				train_labels.append(3)
				jumps_train.append(frame)
				if "JumpForward" in path:
					jumps_labels.append(0)
				if "JumpHigh" in path:
					jumps_labels.append(1)
print("Frame Data Loaded. Setting up training and testing data...")

#last 20% of filepath motions are set as testing data 
motions_test = []
labels_test = []

#Test motions for hops
hops_motions_test = []
hops_motions_labels = []

#Test motions for jumps
jumps_motions_test = []
jumps_motions_labels = []

#Reserve last 20% of data for testing 
for path in filepaths[int(len(filepaths)*pct):]:
	motion = pickle.load(open(path, "rb"))
	motions_test.append(motion) 		#add to list
	if "HopLeft" in path or "HopRight" in path:
		hops_motions_test.append(motion)
		if "HopLeft" in path:
			labels_test.append(0)
			hops_motions_labels.append(0)
		elif "HopRight" in path:
			labels_test.append(1)
			hops_motions_labels.append(1)
	elif "JogSpot" in path:
		labels_test.append(2)
	elif "JumpSide" in path:
		labels_test.append(3)
	elif "JumpForward" in path or "JumpHigh" in path:
		jumps_motions_test.append(motion)
		if "JumpForward" in path:
			labels_test.append(4)
			jumps_motions_labels.append(0)
		if "JumpHigh" in path:
			labels_test.append(5)
			jumps_motions_labels.append(1)

#Shuffle train frames dataset
assert len(train_frames) == len(train_labels)
c = list(zip(train_frames, train_labels))
random.shuffle(c)
train_frames, train_labels = zip(*c)

#Pickle training data for MLModel_Layer_1.py
train_frames = np.array(train_frames)
train_labels = np.array(train_labels)
pickle_out = open("./Testing_Data/layer_1_train_frames.pickle", "wb")
pickle.dump(train_frames, pickle_out)
pickle_out = open("./Testing_Data/layer_1_train_labels.pickle", "wb")
pickle.dump(train_labels, pickle_out)

#Pickle test motions for use in MLModel_Layer_1_Testing.py
test_motions = np.array(motions_test)
test_labels = np.array(labels_test)
pickle_out = open("./Testing_Data/test_motions.pickle", "wb")
pickle.dump(test_motions, pickle_out)
pickle_out = open("./Testing_Data/test_labels.pickle", "wb")
pickle.dump(test_labels, pickle_out)

#Pickle Hops Training Data for MLModel_Layer_2_Hops.py
hops_train = np.array(hops_train)
hops_labels = np.array(hops_labels)
pickle_out = open("./Testing_Data/layer_2_hops_train.pickle", "wb")
pickle.dump(hops_train, pickle_out)
pickle_out = open("./Testing_Data/layer_2_hops_labels.pickle", "wb")
pickle.dump(hops_labels, pickle_out)

#Pickle Hops Testing Data for MLModel_Layer_2_Hops_Testing.py
hops_motions_test = np.array(hops_motions_test)
hops_motions_labels = np.array(hops_motions_labels)
pickle_out = open("./Testing_Data/hops_motions_test.pickle", "wb")
pickle.dump(hops_motions_test, pickle_out)
pickle_out = open("./Testing_Data/hops_motions_labels.pickle", "wb")
pickle.dump(hops_motions_labels, pickle_out)

#Pickle Jumps Training Data for MLModel_Layer_2_Jumps.py
jumps_train = np.array(jumps_train)
jumps_labels = np.array(jumps_labels)
pickle_out = open("./Testing_Data/layer_2_jumps_train.pickle", "wb")
pickle.dump(jumps_train, pickle_out)
pickle_out = open("./Testing_Data/layer_2_jumps_labels.pickle", "wb")
pickle.dump(jumps_labels, pickle_out)

#Pickle Jumps Training Data for MLModel_Layer_2_Jumps_.py
jumps_motions_test = np.array(jumps_motions_test)
jumps_motions_labels = np.array(jumps_motions_labels)
pickle_out = open("./Testing_Data/jumps_motions_test.pickle", "wb")
pickle.dump(jumps_motions_test, pickle_out)
pickle_out = open("./Testing_Data/jumps_motions_labels.pickle", "wb")
pickle.dump(jumps_motions_labels, pickle_out)