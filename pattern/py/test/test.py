def capitalize(s):
    # Инициализация строк для символов на четных и нечетных позициях
    result_string_even = ''
    result_string_odd = ''
    
    # Проходим по строке символ за символом
    for i, char in enumerate(s):
        # Преобразование символа в верхний регистр
        char_upper = char.upper()
        
        # Определение, на какой позиции находится символ (четная или нечетная)
        # и добавление символа в соответствующую строку
        if i % 2 == 0:
            result_string_even += char_upper
            result_string_odd += char
        else:
            result_string_even += char
            result_string_odd += char_upper
    
    return [result_string_even, result_string_odd]

# Пример использования
print(capitalize('romangrin'))
