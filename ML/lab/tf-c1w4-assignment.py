# создание сверточной нейронной сети с точностью 99.9%

# IMPORTANT: This will check your notebook's metadata for grading.
# Please do not continue the lab unless the output of this cell tells you to proceed. 
!python add_metadata.py --filename C1W4_Assignment.ipynb

# 1
# grader-required-cell

import matplotlib.pyplot as plt
import tensorflow as tf
import numpy as np
import os

# 2

# функция для загрузки изображений
from tensorflow.keras.preprocessing.image import load_img
# путь к основной директории с данными
base_dir = "./data/"
# слияем путь к основной директории с адресом счистливых изображений
happy_dir = os.path.join(base_dir, "happy/")
sad_dir = os.path.join(base_dir, "sad/")


print("Пример счастливого изображения:")

# Загружаем первое изображение из директории счастливых изображений и отображаем его с помощью функции plt.imshow.
plt.imshow(load_img(f"{os.path.join(happy_dir, os.listdir(happy_dir)[0])}"))
plt.show()

print("\nПример грустного изображения:")
plt.imshow(load_img(f"{os.path.join(sad_dir, os.listdir(sad_dir)[0])}"))
# Отображаем изображение на экране
plt.show()

# 3 

# grader-required-cell
# импорт функции из керас для преображения изображения в масив numpy
from tensorflow.keras.preprocessing.image import img_to_array

# грузим пример
sample_image  = load_img(f"{os.path.join(happy_dir, os.listdir(happy_dir)[0])}")

# преображаем загруженное в массив numpy
sample_array = img_to_array(sample_image)

# выводим масив 
print(f"Each image has shape: {sample_array.shape}")
# Выводится максимальное значение пикселя в массиве изображения. Максимальное значение пикселя равно 255.0, что типично для изображений с глубиной цвета 8 бит (8 бит на канал).
print(f"The maximum pixel value used is: {np.max(sample_array)}")

# 4
# grader-required-cell

class myCallback(tf.keras.callbacks.Callback):
    def on_epoch_end(self, epoch, logs={}):
        if logs.get('accuracy') is not None and logs.get('accuracy') > 0.999:
            print("\nReached 99.9% accuracy so cancelling training!")
            self.model.stop_training = True    

# 5 

# grader-required-cell
# импортируем клас идг из модуля керас для создания генераторов для загрузки и обработки изображений при обучении модели
from tensorflow.keras.preprocessing.image import ImageDataGenerator

# GRADED FUNCTION: image_generator
def image_generator():
    ### START CODE HERE

    train_datagen = ImageDataGenerator(rescale=1/255)
# создаем генератор изображений методом flow_from_directory у обьекта train_datagen
    train_generator = train_datagen.flow_from_directory(
    	directory=base_dir,
        target_size=(150, 150),
        batch_size=32,
        class_mode='binary')
    ### END CODE HERE

    return train_generator

# Save your generator in a variable
gen = image_generator()

# 6 # grader-required-cell
# Импортируем необходимые модули и классы из TensorFlow и Keras
from tensorflow.keras import optimizers, losses
from tensorflow.keras.optimizers import RMSprop

# GRADED FUNCTION: 
# Определяем функцию train_happy_sad_model, которая будет обучать модель
def train_happy_sad_model(train_generator):

    # Создаем экземпляр колбэка myCallback, который будет отслеживать точность обучения
    callbacks = myCallback()

    ### START CODE HERE

    # Define the model
    # Определяем модель сети

    model = tf.keras.models.Sequential([
	    tf.keras.layers.Conv2D(16, (3,3), activation='relu', input_shape=(150, 150, 3)),
	    tf.keras.layers.MaxPooling2D(2, 2),
	    # The second convolution
	    tf.keras.layers.Conv2D(32, (3,3), activation='relu'),
	    tf.keras.layers.MaxPooling2D(2,2),
	    # The third convolution
	    tf.keras.layers.Conv2D(64, (3,3), activation='relu'),
        tf.keras.layers.Flatten(),
        tf.keras.layers.Dense(512, activation='relu'),
        tf.keras.layers.Dense(1, activation='sigmoid')
    ])

    # Компилируем модель
    # Выбираем функцию потерь 'binary_crossentropy', так как у нас бинарная классификация
    # Выбираем оптимизатор RMSprop с шагом обучения 0.001
    # Выбираем метрику 'accuracy' для оценки производительности модели
    model.compile(loss='binary_crossentropy',
                  optimizer=optimizers.RMSprop(learning_rate=0.001),
                  metrics=['accuracy'])     


    # Train the model
    # Your model should achieve the desired accuracy in less than 15 epochs.
    # You can hardcode up to 20 epochs in the function below but the callback should trigger before 15.
        # Обучаем модель на данных, предоставленных генератором train_generator
    # Желаемое значение точности достигается за 15 эпох (итераций обучения),
    # однако колбэк myCallback остановит обучение, если точность достигнет 99.9% или выше
    
    history = model.fit(x=train_generator,
                        epochs=15,
                        callbacks=[callbacks]
                       )
    
    ### END CODE HERE
     # Возвращаем историю обучения (метрики и потери на каждой эпохе)
    return history

# Обучаем модель и сохраняем историю обучения в переменной hist
hist = train_happy_sad_model(gen)

# 7 