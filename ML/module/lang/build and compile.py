import tensorflow as tf

# устанавливает гиперпараметры для модели. 
embedding_dim = 64
lstm_dim = 64
dense_dim = 64

# строит модель, используя Sequential() функцию из Keras API. Модель состоит из четырех слоев: слоя внедрения, двунаправленного слоя LSTM, плотного слоя с активацией ReLU и плотного слоя с сигмовидной активацией.
model = tf.keras.Sequential([
	# создает слой внедрения с размером словаря из токенизатора и указанным размером внедрения. 
    tf.keras.layers.Embedding(tokenizer.vocab_size, embedding_dim),
    #  создает двунаправленный слой LSTM с указанным размером LSTM. 
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(lstm_dim)),
    # создает плотный слой с указанным размером и активацией ReLU. 
    tf.keras.layers.Dense(dense_dim, activation='relu'),
    # создает плотный слой с одним выходом и сигмовидной активацией.
    tf.keras.layers.Dense(1, activation='sigmoid')
])

# печатает сводку архитектуры модели
model.summary()

# устанавливает параметры обучения для модели, включая функцию потерь, оптимизатор и метрику оценки.
model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])

# В целом, этот код создает модель машинного обучения со слоем внедрения, двунаправленным слоем LSTM и двумя плотными слоями. Модель скомпилирована с двоичной кросс-энтропийной потерей, оптимизатором Адама и метрикой точности. 



import tensorflow as tf
import numpy as np

# Hyperparameters
batch_size = 1
timesteps = 20
features = 16
lstm_dim = 8

print(f'batch_size: {batch_size}')
print(f'timesteps (sequence length): {timesteps}')
print(f'features (embedding size): {features}')
print(f'lstm output units: {lstm_dim}')

# определяет входной массив со случайными значениями и использует LSTM()из Keras API для создания слоя LSTM, который возвращает один вывод, и другого слоя LSTM, который возвращает последовательность

# Define array input with random values
random_input = np.random.rand(batch_size,timesteps,features)
print(f'shape of input array: {random_input.shape}')

# Define LSTM that returns a single output
lstm = tf.keras.layers.LSTM(lstm_dim)
result = lstm(random_input)
print(f'shape of lstm output(return_sequences=False): {result.shape}')

# Define LSTM that returns a sequence
lstm_rs = tf.keras.layers.LSTM(lstm_dim, return_sequences=True)
result = lstm_rs(random_input)
print(f'shape of lstm output(return_sequences=True): {result.shape}')



import tensorflow as tf

# Hyperparameters
embedding_dim = 64
lstm1_dim = 64
lstm2_dim = 32
dense_dim = 64

# Build the model
model = tf.keras.Sequential([
    tf.keras.layers.Embedding(tokenizer.vocab_size, embedding_dim),
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(lstm1_dim, return_sequences=True)),
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(lstm2_dim)),
    tf.keras.layers.Dense(dense_dim, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

# Print the model summary
model.summary()


# Set the training parameters
model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])

# В этом лабораторном занятии показано, как вы можете создавать глубокие сети, объединяя слои LSTM.



import tensorflow as tf
import numpy as np

# Hyperparameters
batch_size = 1
timesteps = 20
features = 20
filters = 128
kernel_size = 5

print(f'batch_size: {batch_size}')
print(f'timesteps (sequence length): {timesteps}')
print(f'features (embedding size): {features}')
print(f'filters: {filters}')
print(f'kernel_size: {kernel_size}')

# Define array input with random values
random_input = np.random.rand(batch_size,timesteps,features)
print(f'shape of input array: {random_input.shape}')

# Pass array to convolution layer and inspect output shape
conv1d = tf.keras.layers.Conv1D(filters=filters, kernel_size=kernel_size, activation='relu')
result = conv1d(random_input)
print(f'shape of conv1d output: {result.shape}')

# Pass array to max pooling layer and inspect output shape
gmp = tf.keras.layers.GlobalMaxPooling1D()
result = gmp(result)
print(f'shape of global max pooling output: {result.shape}')


import tensorflow as tf

# Hyperparameters
embedding_dim = 64
filters = 128
kernel_size = 5
dense_dim = 64

# Build the model
model = tf.keras.Sequential([
    tf.keras.layers.Embedding(tokenizer.vocab_size, embedding_dim),
    tf.keras.layers.Conv1D(filters=filters, kernel_size=kernel_size, activation='relu'),
    tf.keras.layers.GlobalMaxPooling1D(),
    tf.keras.layers.Dense(dense_dim, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

# Print the model summary
model.summary()






import tensorflow as tf

# Parameters
embedding_dim = 16
lstm_dim = 32
dense_dim = 24

# Model Definition with LSTM
model_lstm = tf.keras.Sequential([
    tf.keras.layers.Embedding(vocab_size, embedding_dim, input_length=max_length),
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(lstm_dim)),
    tf.keras.layers.Dense(dense_dim, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

# Set the training parameters
model_lstm.compile(loss='binary_crossentropy',optimizer='adam',metrics=['accuracy'])

# Print the model summary
model_lstm.summary()