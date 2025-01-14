# grader-required-cell

# Импортируем необходимые модули и библиотеки
import os               # Модуль для работы с операционной системой создание, удаление директорий ...
import zipfile          # Модуль для работы с архивами zip загрузить распаковать
import random           # Модуль для работы с случайными числами генераци, перемешивание.
import shutil           # Модуль для работы с файлами и директориями копирование перемещение удаление
import tensorflow as tf # Библиотека для работы с нейронными сетями для создания сетей и обучения моделей
from keras.preprocessing.image import ImageDataGenerator
 # Класс для препроцессинга изображений в Keras для препроцесинга  
from shutil import copyfile # Функция для копирования файлов
import matplotlib.pyplot as plt # Библиотека для визуализации данных для визуализации результатов обучения моделей

# 2.

# If the URL doesn't work, visit https://www.microsoft.com/en-us/download/confirmation.aspx?id=54765
# And right click on the 'Download Manually' link to get a new URL to the dataset

# Если URL не работает, перейдите по адресу https://www.microsoft.com/en-us/download/confirmation.aspx?id=54765
# И щелкните правой кнопкой мыши на ссылке 'Download Manually', чтобы получить новый URL для набора данных

# Note: This is a very large dataset and will take some time to download

# Примечание: Это очень большой набор данных и загрузка может занять некоторое время

!wget --no-check-certificate \
    "https://download.microsoft.com/download/3/E/1/3E1C3F21-ECDB-4869-8368-6DEBA77B919F/kagglecatsanddogs_5340.zip" \
    -O "/tmp/cats-and-dogs.zip"

# Используется утилита wget для загрузки архива с набором данных "Cats vs Dogs" по указанной ссылке.
# Опция --no-check-certificate отключает проверку сертификата SSL, что может быть полезно, если сайт имеет проблемы с сертификатом.
# Флаг -O указывает, что архив будет сохранен в указанном пути, здесь /tmp/cats-and-dogs.zip.

local_zip = '/tmp/cats-and-dogs.zip'
zip_ref   = zipfile.ZipFile(local_zip, 'r')
zip_ref.extractall('/tmp')
zip_ref.close()

# Здесь задается переменная local_zip, содержащая путь к загруженному архиву с данными.
# Затем используется класс zipfile.ZipFile для открытия архива в режиме чтения 'r'.
# Затем вызывается метод extractall('/tmp'), чтобы распаковать содержимое архива в директорию /tmp.
# Наконец, архив закрывается с помощью метода close().


# 3.

# grader-required-cell

# Задаем исходный путь к директории с данными о питомцах (коты и собаки)
source_path = '/tmp/PetImages'

# Задаем путь к директории с изображениями собак
source_path_dogs = os.path.join(source_path, 'Dog')

# Задаем путь к директории с изображениями котов
source_path_cats = os.path.join(source_path, 'Cat')

# Удаляем все файлы, не являющиеся изображениями (в наборе данных есть два .db файла)
!find /tmp/PetImages/ -type f ! -name "*.jpg" -exec rm {} +

# Функция os.listdir возвращает список всех файлов в указанной директории
# и с помощью len подсчитываем количество файлов в директориях собак и котов.
print(f"There are {len(os.listdir(source_path_dogs))} images of dogs.")
print(f"There are {len(os.listdir(source_path_cats))} images of cats.")

# 4.

# grader-required-cell

# Задаем корневой каталог для всех данных
root_dir = '/tmp/cats-v-dogs'

# Удаляем пустую директорию, чтобы предотвратить ошибку FileExistsError, если функция запускается несколько раз
if os.path.exists(root_dir):
  shutil.rmtree(root_dir)

# Определение функции create_train_val_dirs
def create_train_val_dirs(root_path):
  """
  Создает директории для обучающего и валидационного наборов данных
  
  Аргументы:
    root_path (строка) - базовый путь каталога для создания поддиректорий
  
  Возвращает:
    None
  """
  ### START CODE HERE

  # ПОДСКАЗКА:
  # Используйте os.makedirs для создания ваших директорий с промежуточными поддиректориями
  # Не жестко кодируйте пути. Используйте os.path.join для добавления новых директорий к параметру root_path

  r_train = os.path.join(root_path, 'training')
  r_valid = os.path.join(root_path, 'validation')

  r_train_cats = os.path.join(r_train, 'cats')
  r_train_dogs = os.path.join(r_train, 'dogs')

  r_valid_cats = os.path.join(r_valid, 'cats')
  r_valid_dogs = os.path.join(r_valid, 'dogs')

  os.makedirs(r_train)
  os.makedirs(r_train_cats)
  os.makedirs(r_train_dogs)

  os.makedirs(r_valid)
  os.makedirs(r_valid_cats)
  os.makedirs(r_valid_dogs)

  ### END CODE HERE
  
# Вызов функции create_train_val_dirs для создания структуры директорий для обучающего и валидационного наборов данных
try:
  create_train_val_dirs(root_path=root_dir)
except FileExistsError:
  print("You should not be seeing this since the upper directory is removed beforehand")


# 5.

# grader-required-cell

# Тестируем функцию create_train_val_dirs

# Используем цикл для обхода всех директорий и файлов внутри корневой директории root_dir
for rootdir, dirs, files in os.walk(root_dir):
    # Внутри цикла перебираем все поддиректории (dirs) в текущей директории (rootdir)
    for subdir in dirs:
        # Выводим полный путь к каждой поддиректории с помощью os.path.join(rootdir, subdir)
        print(os.path.join(rootdir, subdir))


# 6.

# grader-required-cell

# GRADED FUNCTION: split_data
def split_data(SOURCE_DIR, TRAINING_DIR, VALIDATION_DIR, SPLIT_SIZE):
  """
  Splits the data into train and test sets
  
  Args:
    SOURCE_DIR (string): directory path containing the images
    TRAINING_DIR (string): directory path to be used for training
    VALIDATION_DIR (string): directory path to be used for validation
    SPLIT_SIZE (float): proportion of the dataset to be used for training
    
  Returns:
    None
  """

  ### START CODE HERE
     # ложим в переменную список всех файлов в исходной директории SOURCE_DIR
  all_files = os.listdir(SOURCE_DIR)
  
  # Перемешиваем список файлов
  random.shuffle(all_files)

  # Определяем индекс, с которого начинается валидационный набор данных
  split_index = int(SPLIT_SIZE * len(all_files))

  # Разделяем файлы на обучающий и валидационный наборы
  training_files = all_files[:split_index]
  validation_files = all_files[split_index:]

  # Копируем файлы из исходной директории в директории обучающего и валидационного наборов
  for file in training_files:
      src = os.path.join(SOURCE_DIR, file)
      dst = os.path.join(TRAINING_DIR, file)
      if os.path.getsize(src) > 0:
          shutil.copyfile(src, dst)
      else:
          print(f"{file} is zero length, so ignoring.")

  for file in validation_files:
      src = os.path.join(SOURCE_DIR, file)
      dst = os.path.join(VALIDATION_DIR, file)
      if os.path.getsize(src) > 0:
          shutil.copyfile(src, dst)
      else:
          print(f"{file} is zero length, so ignoring.")

  ### END CODE HERE
  # 7. 

  # grader-required-cell

# Test your split_data function

# Define paths
CAT_SOURCE_DIR = "/tmp/PetImages/Cat/"
DOG_SOURCE_DIR = "/tmp/PetImages/Dog/"

TRAINING_DIR = "/tmp/cats-v-dogs/training/"
VALIDATION_DIR = "/tmp/cats-v-dogs/validation/"

TRAINING_CATS_DIR = os.path.join(TRAINING_DIR, "cats/")
VALIDATION_CATS_DIR = os.path.join(VALIDATION_DIR, "cats/")

TRAINING_DOGS_DIR = os.path.join(TRAINING_DIR, "dogs/")
VALIDATION_DOGS_DIR = os.path.join(VALIDATION_DIR, "dogs/")

# Empty directories in case you run this cell multiple times
if len(os.listdir(TRAINING_CATS_DIR)) > 0:
  for file in os.scandir(TRAINING_CATS_DIR):
    os.remove(file.path)
if len(os.listdir(TRAINING_DOGS_DIR)) > 0:
  for file in os.scandir(TRAINING_DOGS_DIR):
    os.remove(file.path)
if len(os.listdir(VALIDATION_CATS_DIR)) > 0:
  for file in os.scandir(VALIDATION_CATS_DIR):
    os.remove(file.path)
if len(os.listdir(VALIDATION_DOGS_DIR)) > 0:
  for file in os.scandir(VALIDATION_DOGS_DIR):
    os.remove(file.path)

# Define proportion of images used for training
split_size = .9

# Run the function
# NOTE: Messages about zero length images should be printed out
split_data(CAT_SOURCE_DIR, TRAINING_CATS_DIR, VALIDATION_CATS_DIR, split_size)
split_data(DOG_SOURCE_DIR, TRAINING_DOGS_DIR, VALIDATION_DOGS_DIR, split_size)

# Check that the number of images matches the expected output

# Your function should perform copies rather than moving images so original directories should contain unchanged images
print(f"\n\nOriginal cat's directory has {len(os.listdir(CAT_SOURCE_DIR))} images")
print(f"Original dog's directory has {len(os.listdir(DOG_SOURCE_DIR))} images\n")

# Training and validation splits
print(f"There are {len(os.listdir(TRAINING_CATS_DIR))} images of cats for training")
print(f"There are {len(os.listdir(TRAINING_DOGS_DIR))} images of dogs for training")
print(f"There are {len(os.listdir(VALIDATION_CATS_DIR))} images of cats for validation")
print(f"There are {len(os.listdir(VALIDATION_DOGS_DIR))} images of dogs for validation")

# 8. 
# grader-required-cell

# GRADED FUNCTION: train_val_generators
def train_val_generators(TRAINING_DIR, VALIDATION_DIR):
  """
  Creates the training and validation data generators
  
  Args:
    TRAINING_DIR (string): directory path containing the training images
    VALIDATION_DIR (string): directory path containing the testing/validation images
    
  Returns:
    train_generator, validation_generator - tuple containing the generators
  """
  ### START CODE HERE

  # Instantiate the ImageDataGenerator class (don't forget to set the rescale argument)
  train_datagen = ImageDataGenerator(rescale=1./255)

  # Pass in the appropriate arguments to the flow_from_directory method
  train_generator = train_datagen.flow_from_directory(directory=TRAINING_DIR,
                                                      batch_size=20,
                                                      class_mode='binary',
                                                      target_size=(150, 150)
                                                      )

  # Instantiate the ImageDataGenerator class (don't forget to set the rescale argument)
  validation_datagen =  ImageDataGenerator(rescale=1./255)

  # Pass in the appropriate arguments to the flow_from_directory method
  validation_generator = validation_datagen.flow_from_directory(directory=VALIDATION_DIR,
                                                      batch_size=20,
                                                      class_mode='binary',
                                                      target_size=(150, 150)
                                                      )
  ### END CODE HERE
  return train_generator, validation_generator



# 9.
  # grader-required-cell

# Test your generators
train_generator, validation_generator = train_val_generators(TRAINING_DIR, VALIDATION_DIR)



# 10.
# grader-required-cell

# GRADED FUNCTION: create_model
def create_model():
  # DEFINE A KERAS MODEL TO CLASSIFY CATS V DOGS
  # USE AT LEAST 3 CONVOLUTION LAYERS

  ### START CODE HERE

  model = tf.keras.models.Sequential([
    tf.keras.layers.Conv2D(32, (3, 3), activation='relu', input_shape=(150, 150, 3)),
    tf.keras.layers.MaxPooling2D((2, 2)),

    tf.keras.layers.Conv2D(64, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D((2, 2)),

    tf.keras.layers.Conv2D(128, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D((2, 2)),

    tf.keras.layers.Flatten(),
    tf.keras.layers.Dropout(0.5),
    tf.keras.layers.Dense(512, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
  ])

  model.compile(optimizer=tf.keras.optimizers.RMSprop(lr=1e-4),
                loss='binary_crossentropy',
                metrics=['accuracy'])

  print("Training files:", os.listdir(TRAINING_DIR))
  print("Validation files:", os.listdir(VALIDATION_DIR))

  ### END CODE HERE

  return model


  # 11. 

# Get the untrained model
model = create_model()

# Train the model
# Note that this may take some time.
history = model.fit(train_generator,
                    epochs=15,
                    verbose=1,
                    validation_data=validation_generator)


# 12. 
#-----------------------------------------------------------
# Retrieve a list of list results on training and test data
# sets for each training epoch
#-----------------------------------------------------------
acc=history.history['accuracy']
val_acc=history.history['val_accuracy']
loss=history.history['loss']
val_loss=history.history['val_loss']

epochs=range(len(acc)) # Get number of epochs

#------------------------------------------------
# Plot training and validation accuracy per epoch
#------------------------------------------------
plt.plot(epochs, acc, 'r', "Training Accuracy")
plt.plot(epochs, val_acc, 'b', "Validation Accuracy")
plt.title('Training and validation accuracy')
plt.show()
print("")

#------------------------------------------------
# Plot training and validation loss per epoch
#------------------------------------------------
plt.plot(epochs, loss, 'r', "Training Loss")
plt.plot(epochs, val_loss, 'b', "Validation Loss")
plt.show()

# 13. скачать history.pkl

def download_history():
  import pickle
  from google.colab import files

  with open('history.pkl', 'wb') as f:
    pickle.dump(history.history, f)

  files.download('history.pkl')

download_history()

