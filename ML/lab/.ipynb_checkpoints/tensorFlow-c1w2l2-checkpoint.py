
1. загрузить датасет

import tensorflow as tf

# Instantiate the dataset API
fmnist = tf.keras.datasets.fashion_mnist

# Load the dataset
(x_train, y_train),(x_test, y_test) = fmnist.load_data()

2. нормализовать значения датасета
# Normalize the pixel values
x_train, x_test = x_train / 255.0, x_test / 255.0

3. Описать колбек стопающий обучение по значению переданному в логи
обратные вызовы
#Abstract base class used to build new callbacks.
tf.keras.callbacks.Callback()
class myCallback(tf.keras.callbacks.Callback):
  # колбеком вызывается каждый раз когда заканчивается эпоха
  def on_epoch_end(self, epoch, logs={}):
	 # колбек передает обьект логс со строками о текущем состоянии обучения
    if(logs.get('accuracy') >=0.8): # если дата акураси >=0.8 
      print("\nReached 60% accuracy so cancelling training!")
      # то выведи сообщение
      self.model.stop_training = True
		# и положим тру в фк останавливающую работу
callbacks = myCallback()

__________________________________
	my_callbacks = [
		tf.keras.callbacks.EarlyStopping(patience=2),
		tf.keras.callbacks.ModelCheckpoint(filepath='model.{epoch:02d}-{val_loss:.2f}.h5'),
		tf.keras.callbacks.TensorBoard(log_dir='./logs'),
	]
	model.fit(dataset, epochs=10, callbacks=my_callbacks)
__________________________________

4. Сборка нейронов в модель и компиляция по параметрам
# Define the model
model = tf.keras.models.Sequential([
	tf.keras.layers.Flatten(input_shape=(28, 28)),
	tf.keras.layers.Dense(512, activation=tf.nn.relu),
	tf.keras.layers.Dense(10, activation=tf.nn.softmax)
])

# Compile the model
model.compile(optimizer=tf.optimizers.Adam(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

5. Запуск модели
	# Train the model with a callback
	model.fit(x_train, y_train, epochs=10, callbacks=[callbacks])
