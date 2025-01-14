1. подключаем либы
# grader-required-cell
import os
import tensorflow as tf
from tensorflow import keras

2. зрузим датасет и нормализируем
# grader-required-cell

# Load the data

# Get current working directory
current_dir = os.getcwd()

# Append data/mnist.npz to the previous path to get the full path
data_path = os.path.join(current_dir, "data/mnist.npz")

# Discard test set
(x_train, y_train), _ = tf.keras.datasets.mnist.load_data(path=data_path)
        
# Normalize pixel values
x_train = x_train / 255.0

3. Чтото про тренировочные данные
# grader-required-cell
data_shape = x_train.shape

print(f"There are {data_shape[0]} examples with shape ({data_shape[1]}, {data_shape[2]})")

4. Колбек
# grader-required-cell

# GRADED CLASS: myCallback
### START CODE HERE

# Remember to inherit from the correct class
class myCallback():
        # Define the correct function signature for on_epoch_end
        def on_epoch_end(None, None, None=None):
            if logs.get('accuracy') is not None and logs.get('accuracy') > 0.99:                 
                print("\nReached 99% accuracy so cancelling training!")
                
                # Stop training once the above condition is met
                None = None

### END CODE HERE

5. 

