import tensorflow as tf
import pickle
import numpy as np
import random

#JUMPS MODEL
jumps_train = pickle.load(open(r"./Testing_Data/layer_2_jumps_train.pickle", "rb"))
jumps_labels = pickle.load(open(r"./Testing_Data/layer_2_jumps_labels.pickle", "rb"))

jumps_train = np.array(jumps_train)
jumps_labels = np.array(jumps_labels)

#Augment the training data
aug_jumps_train = np.zeros((jumps_train.shape[0] * 2, 20, 5))
i = 0
jitter_x = random.uniform(0, 0.03)
jitter_y = random.uniform(0, 0.03)
jitter_z = random.uniform(0, 0.03)
print(jitter_x, jitter_y, jitter_z)
while i < jumps_train.shape[0]:
	aug_jumps_train[i] = jumps_train[i]
	i += 1
for frame in jumps_train:
	f2 = frame
	for coord in f2:
		coord[0] += 1 + jitter_x #Jitter
		coord[1] += jitter_y
		coord[2] += jitter_z
	aug_jumps_train[i] = f2
	i += 1;

#Augment the Labels
aug_jumps_labels = np.zeros((jumps_labels.shape[0] * 2))
i = 0 
while i < jumps_labels.shape[0] :
  aug_jumps_labels[i] = jumps_labels[i]
  i += 1

j = 0
for frame in jumps_labels:
  aug_jumps_labels[i] = jumps_labels[j]
  i += 1;
  j += 1;

jumps_model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(),
  tf.keras.layers.Dense(32, activation='relu'),
  tf.keras.layers.Dense(64, activation='relu'),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),
  tf.keras.layers.Dense(1, activation='sigmoid')
])

#compile model
jumps_model.compile(optimizer='Nadam',
              loss='binary_crossentropy',
              metrics=['accuracy'])
#fit model
jumps_model.fit(aug_jumps_train, aug_jumps_labels, epochs=8)

namestring = r".\Models\jumps_model"
jumps_model.save(namestring)