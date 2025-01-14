```cs
// array Объявление переменной rSum и инициализация нулевым значением
int rSum=0; 

// Цикл перебора элементов массива rArr
foreach (var rKey in rArr)
{
    rSum+=rKey; // Прибавление значения rKey к переменной rSum
}
// Вычисление суммы элементов массива rArr
rArr.Aggregate((a,b)=>a+b);

// склеить два массива в один
arr1.Concat(arr2).ToArray();

// obj в масс определённый ел обж
// Объявление переменной rSum и инициализация нулевым значением
int rSum = 0; 
foreach (var i in rArr) // Цикл перебора элементов массива rArr
{
    foreach (var rKey in i.Keys) // Цикл перебора ключей объекта i
    {
        if (rKey == "ИмяЕл") // Проверка, равен ли текущий ключ "ИмяЕл"
        {
            rSum += i[rKey]; // Прибавление значения по ключу rKey из объекта i к переменной rSum
        }
    }
}
// Возврат значения 0, если коллекция countries пуста, иначе возврат значения rSum
return countries.Count == 0 ? 0 : rSum; 

```

```js
// array
	for (const rKey of rArr) {rSum += rKey
	// .map(i => i < r1 ? r2 : r3)
	rArr.reduce((a,b) => a+b);
	// склеить два массива в один
	[...arr1, ...arr2]
// obj
// в масс определённый ел обж
	let rSum = 0;
	for (const i of rArr) {
		for (const rKey in i) {
			rKey === 'ИмяЕл' ? rSum += i[rKey] : 0
		}
	}
	return countries.length === 0 ? 0 : rSum;
}
```
