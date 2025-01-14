# w1
# c2w1l1

# y2b
# 1. go to https://www.kaggle.com/settings/account -> api -> create token -> download -> open kaggle.json {"username":"romanboreiyko","key":"9253a13ea35130feba6560ba9bdce5e4"} 

import os 
os.environ['KAGGLE_USERNAME'] = "romanboreiyko" # username from the json file
os.environ['KAGGLE_KEY'] = "9253a13ea35130feba6560ba9bdce5e4" # key from json file
!kaggle competitions download -c dogs-vs-cats # api copied from kaggle

# 2. go -> https://www.kaggle.com/competitions/dogs-vs-cats/data ->

# upload data import function to zip
from zipfile import ZipFile

file_name = "/content/dogs-vs-cats.zip"
with ZipFile(file_name, 'r') as zip:
	zip.extractall()
	print('done')

# Распаковать содержимое zip-архива
file_name = "/content/train.zip"
with ZipFile(file_name, 'r') as zip:
    zip.extractall("/content/")
    print('Распаковка завершена.')

# Распаковать содержимое zip-архива
file_name = "/content/test1.zip"
with ZipFile(file_name, 'r') as zip:
    zip.extractall("/content/")
    print('Распаковка завершена.')

# 2-3 
import shutil

# Удалить директорию, если она уже существует
if os.path.exists('/content/cats_and_dogs_small'):
    shutil.rmtree('/content/cats_and_dogs_small')

    print('done.')

# 3. директория списка функций

data_dir_list = os.listdir('/content/train')

# функция печати файлов, подсчета файлов
path, dirs, files = next(os.walk("/content/train"))
file_count = len(files)
print(file_count)

# берем исходный набор данных и на его основе создаем еще один
original_dataset_dir = '/content/train'
base_dir = '/content/cats_and_dogs_small'
os.mkdir(base_dir)

print('done.')


# 4. создание директорий
# каталог тренеровки
train_dir = os.path.join(base_dir, 'train')
os.mkdir(train_dir)
train_cats_dir = os.path.join(train_dir, 'cats')
os.mkdir(train_cats_dir)
train_dogs_dir = os.path.join(train_dir, 'dogs')
os.mkdir(train_dogs_dir)

# каталог проверки
validation_dir = os.path.join(base_dir, 'validation')
os.mkdir(validation_dir)
validation_cats_dir = os.path.join(base_dir, 'cats')
os.mkdir(validation_cats_dir)
validation_dogs_dir = os.path.join(base_dir, 'dogs')
os.mkdir(validation_dogs_dir)

# каталог тестов
test_dir = os.path.join(base_dir, 'test')
os.mkdir(test_dir)
test_cats_dir = os.path.join(test_dir, 'cats')
os.mkdir(test_cats_dir)
test_dogs_dir = os.path.join(test_dir, 'dogs')
os.mkdir(test_dogs_dir)





# 5. считывает изображения кошек по имени -> копирует тысячу изображений ... директории с картинками кошек и собак прономерованные
import shutil
fname = ['cat.{}.jpg'.format(i) for i in range(1000)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(train_cats_dir, fname)
	#print(src,dst)
	shutil.copyfile(src, dst)
fname = ['cat.{}.jpg'.format(i) for i in range(1000, 1500)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(validation_cats_dir, fname)
	shutil.copyfile(src, dst)
fname = ['cat.{}.jpg'.format(i) for i in range(1000, 2000)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(test_cats_dir, fname)
	shutil.copyfile(src, dst)

fname = ['dog.{}.jpg'.format(i) for i in range(1000)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(test_dogs_dir, fname)
	shutil.copyfile(src, dst)

fname = ['dog.{}.jpg'.format(i) for i in range(1000, 1500)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(validation_dogs_dir, fname)
	shutil.copyfile(src, dst)

fname = ['dog.{}.jpg'.format(i) for i in range(1000, 2000)]
for fname in fnames:
	src = os.path.join(original_dataset_dir, fname)
	dst = os.path.join(test_dogs_dir, fname)
	shutil.copyfile(src, dst)

# 6 проверка сколько у меня изображений в каждой конкретной директории

print('total training cat images:', len(os.listdir(train_cats_dir)))
print('total training dog images:', len(os.listdir(train_dogs_dir)))

print('total validation cat images:', len(os.listdir(validation_cats_dir)))
print('total validation dog images:', len(os.listdir(validation_dogs_dir)))

print('total test cat images:', len(os.listdir(test_cats_dir)))
print('total test dog images:', len(os.listdir(test_dogs_dir)))

# 7 построение последовательной модели CNN на керас  
from keras import layers
from keras import models

model = models.Sequential()
# первый слой на 32 ядра размером 3 на 3 -> фк активации релу -> размер входных данных 150 на 150 и цветные значит 3 (2 для серых) 
model.add(layers.Conv2D(32, (3, 3), activation='relu', input_shape=(150, 150, 3)))
# слой максимального обьеденения 2 на 2 чтобы уменьшить размер слоев
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(64, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(128, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(128, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Flatten())
model.add(layers.Dense(512, activation='relu'))
model.add(layers.Dense(1, activation='sigmoid'))

model.summary()

# 8 скомпилируем модель через оптимайзер
from keras import optimizers
model.compile(loss='binary_crossentropy',
	optimizer=optimizers.RMSprop(lr=1e-4),
	metrics=['acc'])

# 9 генератор с предварительной обработкой изображений
from keras.preprocessing.image import ImageDataGenerator

# создаем обучающий генератор
train_datagen = ImageDataGenerator(rescale=1./255)
# создаем тестовый генератор маштабируем изображения
test_datagen = ImageDataGenerator(rescale=1./255)

# указываем директорию, целевой размер, размер 20 двоичных файлов 
train_generator = train_datagen.flow_from_directory(train_dir, 
	target_size=(150, 150),
	batch_size=20,
	class_mode='binary')
validation_generator = test_datagen.flow_from_directory(validation_dir, 
	target_size=(150, 150),
	batch_size=20,
	class_mode='binary')

# 10 запуск модели

history = model.fit_generator(train_generator,
                              steps_per_epoch=100,
                              epochs=30,
                              validation_data=validation_generator,
                              validation_steps=10)

model.save('cats_and_dogs_small_1.h5')


# не работает из за кей еррор 11 построение графика функции прогресса обучения
import matplotlib.pyplot as plt

acc      = history.history[     'accuracy' ]
val_acc  = history.history[ 'val_accuracy' ]
loss     = history.history[    'loss' ]
val_loss = history.history['val_loss' ]

epochs = range(1, len(acc) + 1)

plt.plot(epochs, acc, 'bo', label='Training acc')
plt.plot(epochs, val_acc, 'b', label='Validation acc')
plt.title('Training and validation accuracy')
plt.legend()

plt.figure()

plt.plot(epochs, loss, 'bo', label='Training loss')
plt.plot(epochs, val_loss, 'b', label='Validation loss')
plt.title('Training and validation loss')
plt.legend()

plt.show()

# 11 альтернатива

# не работает из за кей еррор 11 построение графика функции прогресса обучения
import matplotlib.pyplot as plt

acc      = history.history[     'accuracy' ]
val_acc  = history.history[ 'val_accuracy' ]
loss     = history.history[    'loss' ]
val_loss = history.history['val_loss' ]


epochs   = range(len(acc)) # Get number of epochs

#------------------------------------------------
# Plot training and validation accuracy per epoch
#------------------------------------------------
plt.plot  ( epochs,     acc )
plt.plot  ( epochs, val_acc )
plt.title ('Training and validation accuracy')
plt.figure()

#------------------------------------------------
# Plot training and validation loss per epoch
#------------------------------------------------
plt.plot  ( epochs,     loss )
plt.plot  ( epochs, val_loss )
plt.title ('Training and validation loss'   )


# 12 во избежание переобучения используем отсев

model = models.Sequential()
# первый слой на 32 ядра размером 3 на 3 -> фк активации релу -> размер входных данных 150 на 150 и цветные значит 3 (2 для серых) 
model.add(layers.Conv2D(32, (3, 3), activation='relu', input_shape=(150, 150, 3)))
# слой максимального обьеденения 2 на 2 чтобы уменьшить размер слоев
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(64, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(128, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Conv2D(128, (3, 3), activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))
model.add(layers.Flatten())
model.add(layers.Dropout(0.5))
model.add(layers.Dense(512, activation='relu'))
model.add(layers.Dense(1, activation='sigmoid'))

model.summary()

# 13

model.compile(loss='binary_crossentropy',
	optimizer=optimizers.RMSprop(lr=1e-4),
	metrics=['acc'])

# 14 меняем изображение, вращаем, растягиваем, зумим создаем копии, масштабируем
train_datagen = ImageDataGenerator(rescale=1./255,
	rotation_range=40,
	width_shift_range=0.2,
	height_shift_range=0.2,
	shear_range=0.2,
	zoom_range=0.2,
	horizontal_flip=True,)

test_datagen = ImageDataGenerator(rescale=1./255)

train_generator = train_datagen.flow_from_directory(train_dir,
	target_size=(150, 150),
	batch_size=32,
	class_mode='binary')

# 15 показать историю генерации

history = model.fit_generator(train_generator,
	steps_per_epoch=100,
	epochs=20,
	validation_data = validation_generator,
	validation_steps = 50)


# 16 Перед выполнением следующего упражнения запустите следующую ячейку, чтобы завершить работу ядра и освободить ресурсы памяти: 


import os, signal
os.kill(os.getpid(), signal.SIGKILL)