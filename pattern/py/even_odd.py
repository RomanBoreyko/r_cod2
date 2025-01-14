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

def capitalize(s):
    s = ''.join(c if i%2 else c.upper() for i,c in enumerate(s))
    return [s, s.swapcase()]


def capitalize(s):
    result = ['','']
    for i,c in enumerate(s):
        result[0] += c.lower() if i % 2 else c.upper()
        result[1] += c.upper() if i % 2 else c.lower()
    return result


def capitalize(s):
    s1 = ''.join(s[i].upper() if i%2 == 0 else s[i] for i in range(0, len(s)))
    s2 = ''.join(s[i].upper() if i%2 != 0 else s[i] for i in range(0, len(s)))
    return [s1, s2]

def capitalize(s):
    arr, arr1 = list(s), list(s)
    arr[::2], arr1[1::2] = s[::2].upper(), s[1::2].upper() 
    return [''.join(arr), ''.join(arr1)]


                
# Разделение на массивы с элементами на четных и нечетных позициях
even_indices = array[::2]
odd_indices = array[1::2]

array = list(s)
even_indices = [array[i] for i in range(len(array)) if i % 2 == 0]
odd_indices = [array[i] for i in range(len(array)) if i % 2 != 0]



def capitalize(s):
    even_indices = [s[i] for i in range(len(s)) if i % 2 == 0]
    odd_indices = [s[i] for i in range(len(s)) if i % 2 != 0]
    
	# Преобразование букв в верхний регистр
    even_indices_uppercase = [item.upper() for item in even_indices]
    odd_indices_uppercase = [item.upper() for item in odd_indices]
    


    return

print(capitalize('romangrin'))


