using PyCall
tf = pyimport("tensorflow")
keras = pyimport("tensorflow.keras")

model = keras.Sequential([
    keras.layers.Dense(10, activation="relu"),
    keras.layers.Dense(1, activation="sigmoid")
])

model.compile(optimizer="adam", loss="mse")

X_train = tf.random.normal([1000, 3])
y_train = tf.random.uniform([1000, 1])
model.fit(X_train, y_train, epochs=100)

X_new = tf.random.normal([2, 3])
model.predict(X_new)
