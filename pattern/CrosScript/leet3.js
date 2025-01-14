//js
/**
 * @param {string} s  // Параметр функции: строка s (римское число)
 * @return {number}   // Возвращаемое значение: число
 */
var romanToInt = function(s) {
    const romanValues = {
        I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000
    };

    let result = 0;

    s.split('').map((symbol, index) => {
        const value = romanValues[symbol];  // Присваиваем переменной value значение из словаря romanValues, соответствующее символу римского числа
        const nextValue = romanValues[s[index + 1]];  // Присваиваем переменной nextValue значение из словаря romanValues, соответствующее следующему символу римского числа

        if (nextValue && value < nextValue) {  // Если nextValue существует и значение текущего символа меньше значения следующего символа
            result -= value;  // Вычитаем значение текущего символа из результата
        } else {
            result += value;  // Прибавляем значение текущего символа к результату
        }
    });

    return result;  // Возвращаем полученный результат
};

//py//class Solution:
def romanToInt(self, s: str) -> int:
	romanValues = {
		'I': 1,   # Значение символа 'I' в римской системе счисления
		'V': 5,   # Значение символа 'V' в римской системе счисления
		'X': 10,  # Значение символа 'X' в римской системе счисления
		'L': 50,  # Значение символа 'L' в римской системе счисления
		'C': 100, # Значение символа 'C' в римской системе счисления
		'D': 500, # Значение символа 'D' в римской системе счисления
		'M': 1000 # Значение символа 'M' в римской системе счисления
	}
	result = 0
	# Инициализация переменной для хранения результата преобразования римского числа в целое число

	for i in range(len(s)):
	# Итерация по каждому символу входной строки
		if i < len(s)-1 and romanValues[s[i+1]] > romanValues[s[i]]:
		# Если текущий символ меньше следующего символа
			result -= romanValues[s[i]]
			# Вычитаем значение текущего символа из результата
			//таким образом цифры IV получаются через -1+5=4
		else:
			result += romanValues[s[i]]
			# Прибавляем значение текущего символа к результату

	return result  # Возвращаем полученный результат

//cpp
class Solution {
public:
    int romanToInt(string s) {
        unordered_map<char, int> romanValues = {
            {'I', 1},
            {'V', 5},
            {'X', 10},
            {'L', 50},
            {'C', 100},
            {'D', 500},
            {'M', 1000}
        };
        int result = 0;

        for (int i = 0; i < s.length(); i++) {
            if (i < s.length() - 1 && romanValues[s[i + 1]] > romanValues[s[i]]) {
                result -= romanValues[s[i]];
            } else {
                result += romanValues[s[i]];
            }
        }
        return result;
    }
};
