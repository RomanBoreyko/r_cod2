import tensorflow_datasets as tfds

# Download the subword encoded pretokenized dataset
dataset, info = tfds.load('imdb_reviews/subwords8k', with_info=True, as_supervised=True)
#  Аргумент with_info=True возвращает кортеж, содержащий набор данных и его метаданные, включая токенизатор, используемый для кодирования текстовых данных

# Get the tokenizer
tokenizer = info.features['text'].encoder
# Затем токенизатор извлекается из метаданных с помощью info.features['text'].encoder. Полученный токенизатор можно использовать для кодирования и декодирования текстовых данных.


# Download the dataset
!wget https://storage.googleapis.com/tensorflow-1-public/course3/sarcasm.json

import json

# Load the JSON file
with open("./sarcasm.json", 'r') as f:
    datastore = json.load(f)

# Initialize the lists
sentences = []
labels = []

# Collect sentences and labels into the lists
for item in datastore:
    sentences.append(item['headline'])
    labels.append(item['is_sarcastic'])

    