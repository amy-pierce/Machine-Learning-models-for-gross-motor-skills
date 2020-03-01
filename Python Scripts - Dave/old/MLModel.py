import tensorflow as tf
import os
import fnmatch
import pickle
import numpy as np
import random

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
frames_train = list()
labels_train = list()

for path in filepaths[:int(len(filepaths)*0.8)]:
	motion = pickle.load(open(path, "rb"))
	for frame in motion: #create tensor from numpy object
		if frame.shape == (20, 5):
			frames_train.append(frame) 		#add to list
			if "HopLeft" in path:
				labels_train.append(0)
			elif "HopRight" in path:
				labels_train.append(1)
			elif "JogSpot" in path:
				labels_train.append(2)
			elif "JumpForward" in path:
				labels_train.append(3)
			elif "JumpHigh" in path:
				labels_train.append(4)
			elif "JumpSide" in path:
				labels_train.append(5)
print("Frame Data Loaded. Setting up training and testing data...")

#last 20% of filepaths are set as testing data
motions_test = list()
labels_test = list()
for path in filepaths[int(len(filepaths)*0.8):]:
	motion = pickle.load(open(path, "rb"))
	motions_test.append(motion) 		#add to list
	if "HopLeft" in path:
		labels_test.append(0)
	elif "HopRight" in path:
		labels_test.append(1)
	elif "JogSpot" in path:
		labels_test.append(2)
	elif "JumpForward" in path:
		labels_test.append(3)
	elif "JumpHigh" in path:
		labels_test.append(4)
	elif "JumpSide" in path:
		labels_test.append(5)
#Shuffle train dataset

assert len(frames_train) == len(labels_train)
c = list(zip(frames_train, labels_train))
random.shuffle(c)
frames_train, labels_train = zip(*c)

#Create a numpy stack to allow parsing in model.fit
train_frames = np.stack(frames_train)
train_labels = np.stack(labels_train)
test_motions = motions_test
test_labels = labels_test

print(train_frames.shape)

print("Frame Data initialized. Compiling model...")

#create model
model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(input_shape=(20, 5)),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),

  tf.keras.layers.Dense(6, activation='softmax')
])

#compile model
model.compile(optimizer='Nadam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

print("Model Compiled.")

#fit model
model.fit(train_frames, train_labels, epochs=6)

#pickle specific testing data
print("Writing test data to ./test_frames.pickle")
pickle_out = open("./train_motions.pickle", "wb")
pickle.dump(train_frames, pickle_out)
pickle_out = open("./train_labels.pickle", "wb")
pickle.dump(train_labels, pickle_out)
pickle_out = open("./test_motions.pickle", "wb")
pickle.dump(test_motions, pickle_out)
pickle_out = open("./test_labels.pickle", "wb")
pickle.dump(test_labels, pickle_out)
pickle_out.close()


#Save Finalized Model
namestring = r".\Models\x"
model.save(namestring)