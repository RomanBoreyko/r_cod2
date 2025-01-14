
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



import os 
os.environ['KAGGLE_USERNAME'] = "romanboreiyko" # username from the json file
os.environ['KAGGLE_KEY'] = "9253a13ea35130feba6560ba9bdce5e4" # key from json file
!kaggle competitions download -c dogs-vs-cats # api copied from kaggle
