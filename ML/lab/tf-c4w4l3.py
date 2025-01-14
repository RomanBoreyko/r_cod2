# микс из нейронок dnn rnn cnn

# 1. import
import tesorflow as tf
import numpy as np 
import matplotlib.pyplot as plt 
import csv  

# utilities

def plot_series(x, y, format="-", start=0, end=None, title=None, xlabel=None, ylabel=None, legend=None):

    """
    Visualizes time series data

    Args:
      x (array of int) - contains values for the x-axis
      y (array of int or tuple of arrays) - contains the values for the y-axis
      format (string) - line style when plotting the graph
      start (int) - first time step to plot
      end (int) - last time step to plot
      title (string) - title of the plot
      xlabel (string) - label for the x-axis
      ylabel (string) - label for the y-axis
      legend (list of strings) - legend for the plot
    """

    # установка размеров графика
    plt.figure(figsize=(10, 6))
    
    # проверка наличия двух рядов данных для построения графика, является ли y кортеджем? если у кортедж
    if type(y) is tuple:

      # проходим по еллементам. 
      for y_curr in y:

        # функция строит график. с двумя подмножествами по осям х, у, с массивами от индекса старт до енд
        plt.plot(x[start:end], y_curr[start:end], format)

    else:
      # если у это масив то на графике будет построен один ряд
      plt.plot(x[start:end], y[start:end], format)

    # Label the x-axis
    plt.xlabel(xlabel)

    # Label the y-axis
    plt.ylabel(ylabel)

    # если legend != нан список строк с метками для временного ряда
    if legend:
      plt.legend(legend)

    # добавляет заголовок для графика
    plt.title(title)

    # Добавляет сетку на график
    plt.grid(True)

    # Выводит график на экран
    plt.show()