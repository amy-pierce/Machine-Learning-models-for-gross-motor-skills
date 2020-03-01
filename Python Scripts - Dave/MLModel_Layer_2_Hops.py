import tensorflow as tf
import pickle
import numpy as np

hops_train = pickle.load(open(r"./Testing_Data/layer_2_hops_train.pickle", "rb"))
hops_labels = pickle.load(open(r"./Testing_Data/layer_2_hops_labels.pickle", "rb"))

#Augment the training data
aug_hops_train = np.zeros((hops_train.shape[0] * 2, 20, 5))
i = 0
while i < hops_train.shape[0]:
  aug_hops_train[i] = hops_train[i]
  i += 1
for frame in hops_train:
  f2 = frame
  for coord in f2:
    coord[0] += 1;
  aug_hops_train[i] = f2
  i += 1;

#Augment the Labels
aug_hops_labels = np.zeros((hops_labels.shape[0] * 2))
i = 0 
while i < hops_labels.shape[0] :
  aug_hops_labels[i] = hops_labels[i]
  i += 1

j = 0
for frame in hops_labels:
  aug_hops_labels[i] = hops_labels[j]
  i += 1;
  j += 1;

hops_model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(),
  tf.keras.layers.Dense(32, activation='relu'),
  tf.keras.layers.Dense(64, activation='relu'),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dense(256, activation='relu'),
  tf.keras.layers.Dense(512, activation='relu'),
  tf.keras.layers.Dense(1, activation='sigmoid')
])

#compile model
hops_model.compile(optimizer='Nadam',
              loss='binary_crossentropy',
              metrics=['accuracy'])

#fit modelfda
hops_model.fit(aug_hops_train, aug_hops_labels, epochs=6)

namestring = r".\Models\hops_model"
hops_model.save(namestring)