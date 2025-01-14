# IMPORTANT: This will check your notebook's metadata for grading.
# Please do not continue the lab unless the output of this cell tells you to proceed. 
!python add_metadata.py --filename C3W1_Assignment.ipynb

# grader-required-cell

import csv
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences

# grader-required-cell

with open("./data/bbc-text.csv", 'r') as csvfile:
    print(f"First line (header) looks like this:\n\n{csvfile.readline()}")
    print(f"Each data point looks like this:\n\n{csvfile.readline()}")     

    # grader-required-cell

# GRADED FUNCTION: remove_stopwords
def remove_stopwords(sentence):
    """
    Removes a list of stopwords
    
    Args:
        sentence (string): sentence to remove the stopwords from
    
    Returns:
        sentence (string): lowercase sentence without the stopwords
    """
    # List of stopwords
    stopwords = ["a", "about", "above", "after", "again", "against", "all", "am", "an", "and", "any", "are", "as", "at", "be", "because", "been", "before", "being", "below", "between", "both", "but", "by", "could", "did", "do", "does", "doing", "down", "during", "each", "few", "for", "from", "further", "had", "has", "have", "having", "he", "he'd", "he'll", "he's", "her", "here", "here's", "hers", "herself", "him", "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm", "i've", "if", "in", "into", "is", "it", "it's", "its", "itself", "let's", "me", "more", "most", "my", "myself", "nor", "of", "on", "once", "only", "or", "other", "ought", "our", "ours", "ourselves", "out", "over", "own", "same", "she", "she'd", "she'll", "she's", "should", "so", "some", "such", "than", "that", "that's", "the", "their", "theirs", "them", "themselves", "then", "there", "there's", "these", "they", "they'd", "they'll", "they're", "they've", "this", "those", "through", "to", "too", "under", "until", "up", "very", "was", "we", "we'd", "we'll", "we're", "we've", "were", "what", "what's", "when", "when's", "where", "where's", "which", "while", "who", "who's", "whom", "why", "why's", "with", "would", "you", "you'd", "you'll", "you're", "you've", "your", "yours", "yourself", "yourselves" ]
    
    # Sentence converted to lowercase-only
    sentence = sentence.lower()
    
    ### START CODE HERE
    
    words = sentence.split()
    def not_stopword(word):
        return word not in stopwords
    filtered_words = filter(not_stopword, words)
    sentence = ' '.join(filtered_words)
    
    ### END CODE HERE
    return sentence



    # grader-required-cell

# Test your function
remove_stopwords("I am about to go to the store and get any snack")

# grader-required-cell

# GRADED FUNCTION: parse_data_from_file
def parse_data_from_file(filename):
    """
    Extracts sentences and labels from a CSV file
    
    Args:
        filename (string): path to the CSV file
    
    Returns:
        sentences, labels (list of string, list of string): tuple containing lists of sentences and labels
    """
    sentences = []
    labels = []
    with open(filename, 'r') as csvfile:
        ### START CODE HERE
        reader = csv.reader(csvfile, delimiter=',')
        next(reader, None)
        for row in reader:
            label = row[0]
            removeStopwords = remove_stopwords(row[1])
            sentences.append(removeStopwords)
            labels.append(label)
        ### END CODE HERE
    return sentences, labels

# grader-required-cell

# Test your function

# With original dataset
sentences, labels = parse_data_from_file("./data/bbc-text.csv")

print("ORIGINAL DATASET:\n")
print(f"There are {len(sentences)} sentences in the dataset.\n")
print(f"First sentence has {len(sentences[0].split())} words (after removing stopwords).\n")
print(f"There are {len(labels)} labels in the dataset.\n")
print(f"The first 5 labels are {labels[:5]}\n\n")

# With a miniature version of the dataset that contains only first 5 rows
mini_sentences, mini_labels = parse_data_from_file("./data/bbc-text-minimal.csv")

print("MINIATURE DATASET:\n")
print(f"There are {len(mini_sentences)} sentences in the miniature dataset.\n")
print(f"First sentence has {len(mini_sentences[0].split())} words (after removing stopwords).\n")
print(f"There are {len(mini_labels)} labels in the miniature dataset.\n")
print(f"The first 5 labels are {mini_labels[:5]}")


# grader-required-cell

# GRADED FUNCTION: fit_tokenizer
def fit_tokenizer(sentences):
    """
    Instantiates the Tokenizer class
    
    Args:
        sentences (list): lower-cased sentences without stopwords
    
    Returns:
        tokenizer (object): an instance of the Tokenizer class containing the word-index dictionary
    """
    ### START CODE HERE
    # Instantiate the Tokenizer class by passing in the oov_token argument
    tokenizer = Tokenizer(num_words = 100, oov_token="<OOV>")
    # Fit on the sentences
    tokenizer.fit_on_texts(sentences)
    
    ### END CODE HERE
    return tokenizer

# grader-required-cell

tokenizer = fit_tokenizer(sentences)
word_index = tokenizer.word_index

print(f"Vocabulary contains {len(word_index)} words\n")
print("<OOV> token included in vocabulary" if "<OOV>" in word_index else "<OOV> token NOT included in vocabulary")


# grader-required-cell

# GRADED FUNCTION: get_padded_sequences
def get_padded_sequences(tokenizer, sentences):
    """
    Generates an array of token sequences and pads them to the same length
    
    Args:
        tokenizer (object): Tokenizer instance containing the word-index dictionary
        sentences (list of string): list of sentences to tokenize and pad
    
    Returns:
        padded_sequences (array of int): tokenized sentences padded to the same length
    """
    
    ### START CODE HERE
    # Convert sentences to sequences
    sequences = tokenizer.texts_to_sequences(sentences)
    
    # Pad the sequences using the post padding strategy
    padded_sequences = pad_sequences(sequences, padding='post')
    
    ### END CODE HERE
    
    return padded_sequences

# grader-required-cell

padded_sequences = get_padded_sequences(tokenizer, sentences)
print(f"First padded sequence looks like this: \n\n{padded_sequences[0]}\n")
print(f"Numpy array of all sequences has shape: {padded_sequences.shape}\n")
print(f"This means there are {padded_sequences.shape[0]} sequences in total and each one has a size of {padded_sequences.shape[1]}")



# grader-required-cell

# GRADED FUNCTION: tokenize_labels
def tokenize_labels(labels):
    """
    Tokenizes the labels
    
    Args:
        labels (list of string): labels to tokenize
    
    Returns:
        label_sequences, label_word_index (list of string, dictionary): tokenized labels and the word-index
    """
    ### START CODE HERE
    
    # Instantiate the Tokenizer class
    # No need to pass additional arguments since you will be tokenizing the labels
    label_tokenizer = Tokenizer(num_words = 100, oov_token="<OOV>")
    
    # Fit the tokenizer to the labels
    label_tokenizer.fit_on_texts(labels)
    
    # Save the word index
    label_word_index = label_tokenizer.word_index
    
    # Save the sequences
    label_sequences = label_tokenizer.texts_to_sequences(labels)

    ### END CODE HERE
    
    return label_sequences, label_word_index

# grader-required-cell

label_sequences, label_word_index = tokenize_labels(labels)
print(f"Vocabulary of labels looks like this {label_word_index}\n")
print(f"First ten sequences {label_sequences[:10]}\n")


# Импорт необходимых библиотек
import csv
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences

# Открытие CSV-файла с данными
with open("./data/bbc-text.csv", 'r') as csvfile:
    # Чтение первой строки (заголовка) CSV-файла и её вывод
    print(f"Первая строка (заголовок) выглядит так:\n\n{csvfile.readline()}")
    # Чтение второй строки (первой точки данных) CSV-файла и её вывод
    print(f"Каждая точка данных выглядит так:\n\n{csvfile.readline()}")     

# ОЦЕНЕННАЯ ФУНКЦИЯ: remove_stopwords
def remove_stopwords(sentence):
    """
    Удаляет список стоп-слов из предложения.
    
    Args:
        sentence (строка): предложение, из которого необходимо удалить стоп-слова
    
    Returns:
        sentence (строка): предложение в нижнем регистре без стоп-слов
    """
    # Список стоп-слов
    stopwords = [...]  # Список стоп-слов опущен для краткости.

    # Преобразование предложения к нижнему регистру
    sentence = sentence.lower()
    
    # Функция для проверки, что слово не является стоп-словом
    def not_stopword(word):
        return word not in stopwords
    
    # Разделение предложения на слова и фильтрация стоп-слов
    words = sentence.split()
    filtered_words = filter(not_stopword, words)
    sentence = ' '.join(filtered_words)
    
    return sentence

# Тестирование функции remove_stopwords
remove_stopwords("I am about to go to the store and get any snack")

# ОЦЕНЕННАЯ ФУНКЦИЯ: parse_data_from_file
def parse_data_from_file(filename):
    """
    Извлекает предложения и метки из CSV-файла.
    
    Args:
        filename (строка): путь к CSV-файлу
    
    Returns:
        sentences, labels (список строк, список строк): кортеж, содержащий списки предложений и меток
    """
    sentences = []
    labels = []
    with open(filename, 'r') as csvfile:
        # Использование CSV-читателя для чтения содержимого CSV-файла
        reader = csv.reader(csvfile, delimiter=',')
        # Пропуск заголовка
        next(reader, None)
        # Цикл по каждой строке CSV-файла
        for row in reader:
            # Извлечение метки (первый элемент) и предложения (второй элемент) из строки
            label = row[0]
            sentence_without_stopwords = remove_stopwords(row[1])  # Удаление стоп-слов из предложения
            sentences.append(sentence_without_stopwords)  # Добавление обработанного предложения в список предложений
            labels.append(label)  # Добавление метки в список меток
    
    return sentences, labels

# Тестирование функции parse_data_from_file

# С использованием исходного набора данных
sentences, labels = parse_data_from_file("./data/bbc-text.csv")

# Вывод информации об исходном наборе данных
print("ИСХОДНЫЙ НАБОР ДАННЫХ:\n")
print(f"В наборе данных {len(sentences)} предложений.\n")
print(f"Первое предложение содержит {len(sentences[0].split())} слов (после удаления стоп-слов).\n")
print(f"В наборе данных {len(labels)} меток.\n")
print(f"Первые 5 меток: {labels[:5]}\n\n")

# С использованием уменьшенной версии набора данных, содержащей только первые 5 строк
mini_sentences, mini_labels = parse_data_from_file("./data/bbc-text-minimal.csv")

# Вывод информации об уменьшенной версии набора данных
print("УМЕНЬШЕННЫЙ НАБОР ДАННЫХ:\n")
print(f"В уменьшенном наборе данных {len(mini_sentences)} предложений.\n")
print(f"Первое предложение содержит {len(mini_sentences[0].split())} слов (после удаления стоп-слов).\n")
print(f"В уменьшенном наборе данных {len(mini_labels)} меток.\n")
print(f"Первые 5 меток: {mini_labels[:5]}")


# ОЦЕНЕННАЯ ФУНКЦИЯ: fit_tokenizer
def fit_tokenizer(sentences):
    """
    Создает экземпляр класса Tokenizer и применяет его к предложениям.
    
    Args:
        sentences (список): предложения в нижнем регистре без стоп-слов
    
    Returns:
        tokenizer (объект): экземпляр класса Tokenizer, содержащий словарь слов
    """
    # Создание экземпляра класса Tokenizer с num_words равным 100 и oov_token равным "<OOV>"
    tokenizer = Tokenizer(num_words=100, oov_token="<OOV>")
    
    # Применение Tokenizer к предложениям
    tokenizer.fit_on_texts(sentences)
    
    return tokenizer

# Применение Tokenizer к предложениям из исходного набора данных
tokenizer = fit_tokenizer(sentences)
word_index = tokenizer.word_index

# Вывод информации о Tokenizer и словаре слов
print(f"Словарь содержит {len(word_index)} слов\n")
print("Токен '<OOV>' включен в словарь" if "<OOV>" in word_index else "Токен '<OOV>' НЕ включен в словарь")


# ОЦЕНЕННАЯ ФУНКЦИЯ: get_padded_sequences
def get_padded_sequences(tokenizer, sentences):
    """
    Генерирует массив токенизированных последовательностей и заполняет их до одинаковой длины.
    
    Args:
        tokenizer (объект): экземпляр класса Tokenizer с содержащимся словарем слов
        sentences (список строк): список предложений для токенизации и заполнения
    
    Returns:
        padded_sequences (массив int): токенизированные предложения, заполненные до одинаковой длины
    """
    # Токенизация предложений с использованием Tokenizer
    sequences = tokenizer.texts_to_sequences(sentences)
    
    # Заполнение последовательностей с использованием стратегии заполнения 'post'
    padded_sequences = pad_sequences(sequences, padding='post')
    
    return padded_sequences

# Получение заполненных последовательностей для предложений из исходного набора данных
padded_sequences = get_padded_sequences(tokenizer, sentences)
print(f"Первая заполненная последовательность выглядит так: \n\n{padded_sequences[0]}\n")
print(f"Массив Numpy всех последовательностей имеет форму: {padded_sequences.shape}\n")
print(f"Это означает, что всего имеется {padded_sequences.shape[0]} последовательностей, каждая из которых имеет размер {padded_sequences.shape[1]}")

# ОЦЕНЕННАЯ ФУНКЦИЯ: tokenize_labels
def tokenize_labels(labels):
    """
    Токенизирует метки.
    
    Args:
        labels (список строк): метки для токенизации
    
    Returns:
        label_sequences, label_word_index (список строк, словарь): токенизированные метки и словарь слов
    """
    # Создание экземпляра класса Tokenizer для меток
    label_tokenizer = Tokenizer(num_words=100, oov_token="<OOV>")
    
    # Применение Tokenizer к меткам
    label_tokenizer.fit_on_texts(labels)
    
    # Сохранение словаря меток
    label_word_index = label_tokenizer.word_index
    
    # Преобразование меток в последовательности с использованием Tokenizer
    label_sequences = label_tokenizer.texts_to_sequences(labels)
    
    return label_sequences, label_word_index

# Токенизация меток из исходного набора данных
label_sequences, label_word_index = tokenize_labels(labels)
print(f"Словарь меток выглядит так: {label_word_index}\n")
print(f"Первые десять последовательностей: {label_sequences[:10]}\n")
