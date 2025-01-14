def capitals(word):
    uppercase_letters = []
    for char in word:
        if char.isupper():
            uppercase_letters.append(char)
    return uppercase_letters

def capitals(word):
    r_uppercase_letters = []
    r_array = list(word)

    for index, char in enumerate(r_array):  # Используем enumerate() для получения индекса
        if char.isupper():
            r_uppercase_letters.append(index)  # Добавляем кортеж (индекс, символ) в r_uppercase_letters

    return r_uppercase_letters

# Преобразовать строку в массив (список) символов
char_array = list(input_string) 

# Создать список номеров элементов
indices = list(range(len(char_array)))

