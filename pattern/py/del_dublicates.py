# Define a function that removes duplicates from an array of non negative numbers and returns it as a result. The order of the sequence has to stay the same.
# копирование массива по аналогу let r = [...a]; 
r = list(a)

def distinct(seq):
    # Создаем пустой список для хранения уникальных элементов.
    unique_elements = []
    
    # Начинаем перебирать элементы входного списка seq.
    for item in seq:
        # Проверяем, если элемент item уже присутствует в списке unique_elements.
        if item not in unique_elements:
            # Если элемент item не найден в unique_elements, то добавляем его в список.
            unique_elements.append(item)
    
    # Возвращаем список с уникальными элементами.
    return unique_elements

def distinct(seq):
    # Создаем словарь из списка seq, используя элементы списка в качестве ключей.
    # Словарь автоматически удаляет дубликаты ключей, что оставляет только уникальные элементы.
    # Затем полученные ключи конвертируем обратно в список с помощью list().
    return list(dict.fromkeys(seq))

def distinct(seq):
    # Создаем множество (set) из списка seq.
    # Множество автоматически удаляет все дубликаты, таким образом, в нем будут только уникальные элементы.
    unique_elements = set(seq)

    # Преобразуем множество обратно в список, используя функцию sorted().
    # Функция sorted() сортирует элементы множества в том же порядке, в котором они встречались в исходном списке seq.
    # Это обеспечивает сохранение порядка элементов, как они располагались в исходном списке.
    return sorted(unique_elements, key=seq.index)

