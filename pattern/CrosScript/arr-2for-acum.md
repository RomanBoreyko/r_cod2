```js
function accum(s) {
	let result = [], r0_arr = s.toUpperCase()//все в верхний регистр для первой буквы
  
  for (let i=0; i<r0_arr.length; i++) {// цыкл длинною в колличество знаков с строке
    let r0_s = r0_arr[i];// в r0_s кладём знак из строки? но это всё еще строка а не масив?
    
    for (let r0_i = 0; r0_i<i; r0_i++) {// цикл длинною в итерацию(в номер знака в строке s)
      r0_s += r0_arr[i].toLowerCase();
    }
    result.push(r0_s)// собранная строка пушится в масив
  }
      // мне нужно продублировать эллеммент масива столько раз какое число он имеет по счету по месту в очереди масива
  return result.join("-");
}
```

```c#
using System; // Подключение пространства имен System для использования стандартных типов и функций
using System.Collections.Generic; // Подключение пространства имен System.Collections.Generic для использования класса List<T>

public class Accumul // Объявление публичного класса Accumul
{
    public static string Accum(string s) // Объявление публичного статического метода Accum с параметром s типа string
    {
        List<string> result = new List<string>(); // Создание экземпляра класса List<string> для хранения результатов
        string r0_arr = s.ToUpper(); // Преобразование строки s в верхний регистр и сохранение результата в переменную r0_arr типа string

        for (int i = 0; i < r0_arr.Length; i++) // Цикл, проходящий по каждому индексу в строке r0_arr
        {
            string r0_s = r0_arr[i].ToString(); // Преобразование текущего символа в строке r0_arr в тип string и сохранение результата в переменную r0_s типа string

            for (int r0_i = 0; r0_i < i; r0_i++) // Вложенный цикл, проходящий от 0 до текущего индекса
            {
                r0_s += r0_arr[i].ToString().ToLower(); // Добавление символов текущего символа в строку r0_s в нижнем регистре
            }

            result.Add(r0_s); // Добавление строки r0_s в список result
        }

        return string.Join("-", result); // Соединение элементов списка result с использованием дефиса и возврат результирующей строки
    }
}

```

```py
def accum(s):
    result = []
    r0_arr = s.upper()

    for i in range(len(r0_arr)):
        r0_s = r0_arr[i]

        for r0_i in range(i):
            r0_s += r0_arr[i].lower()

        result.append(r0_s)

    return '-'.join(result)
```
