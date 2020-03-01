import tensorflow as tf
import os
import fnmatch
import pickle
import numpy as np
import random

#Create a numpy stack to allow parsing in model.fit
train_frames = pickle.load(open(r"./Testing_Data/layer_1_train_frames.pickle", "rb"))
train_labels = pickle.load(open(r"./Testing_Data/layer_1_train_labels.pickle", "rb"))

#create model
model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),fda
  tf.keras.layers.Dense(4, activation='softmax')
])
fda
#compile model
model.compile(optimizer='Nadam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

#fit model
model.fit(train_frames, train_labels, epochs=6)

#Save Model
model.save(r".\layer_1_model")