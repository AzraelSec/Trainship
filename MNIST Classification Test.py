# -*- coding: utf-8 -*-
"""
Created on Thu Jun 25 22:52:56 2020

@author: feder
"""


import tensorflow as tf
import datetime
from tensorflow.keras.layers import Flatten, InputLayer, Dense, Conv2D, Dropout, MaxPooling2D, BatchNormalization

mnist = tf.keras.datasets.mnist

(x_train, y_train), (x_test, y_test) = mnist.load_data()

x_train, x_test = x_train / 255.0, x_test / 255.0

x_train = x_train.reshape(x_train.shape[0], 28, 28, 1)
x_test = x_test.reshape(x_test.shape[0], 28, 28, 1)

model = tf.keras.models.Sequential([
    InputLayer(),
    Conv2D(64, (3, 3), activation='relu'),
    MaxPooling2D(pool_size=(2, 2)),
    Conv2D(128, (3, 3), activation='relu'),
    MaxPooling2D(pool_size=(2, 2)),
    Conv2D(128, (3, 3), activation='relu'),
    MaxPooling2D(pool_size=(2, 2)),
    Flatten(input_shape=(28,28)),
    Dense(128, activation="relu"),
    Dropout(0.2),
    Dense(10, activation='softmax')
])

model.compile(
    optimizer="adam",
    loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
    metrics=['accuracy']
)

print("Model Training...")
model.fit(x_train, y_train, batch_size=10, epochs=5, verbose=2)

print("Model Testing...")
_,accuracy = model.evaluate(x_test, y_test, verbose=2)