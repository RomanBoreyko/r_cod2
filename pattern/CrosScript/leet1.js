сумирование
массивы
многомерные массивы
сортировка обьектов
удаление из масива
сокращение масива

ja
let mat = [
  [1, 1, 0, 0, 0],
  [1, 1, 1, 1, 0],
  [1, 0, 0, 0, 0],
  [1, 1, 0, 0, 0],
  [1, 1, 1, 1, 1]
];
let k = 3;

let result = [];
let Rresult = [];

for (let i = 0; i < mat.length; i++)
{
	let rSum = 0;
	for (let j = 0; j < mat[i].length; j++)
	{
		rSum += mat[i][j];
	}
	result.push({ row: i, soldiers: rSum });
}

result.sort((a,b)=> a.soldiers - b.soldiers);
for (let r = result.length - k; r > 0; r--){result.pop();}
for(let l of result)
{
	Rresult.push(l.row);
}


py
class Solution:
    def kWeakestRows(self, mat: List[List[int]], k: int) -> List[int]:
        result = []  # Создаем пустой список для хранения пар (строка, сумма солдат)
        Rresult = []  # Создаем пустой список для хранения индексов k наименее устойчивых строк

        for i in range(len(mat)):  # Итерируемся по каждой строке матрицы
            rSum = sum(mat[i])  # Считаем сумму солдат в текущей строке
            result.append({"row": i, "soldiers": rSum})  # Добавляем пару (строка, сумма солдат) в список result

        result.sort(key=lambda x: x["soldiers"])  # Сортируем список result по возрастанию суммы солдат

        for item in result[:k]:  # Итерируемся по первым k элементам списка result
            Rresult.append(item["row"])  # Добавляем индекс строки в список Rresult

        return Rresult  # Возвращаем список индексов k наименее устойчивых строк




cpp
#include <iostream> // Подключаем заголовочный файл для ввода/вывода через стандартные потоки

#include <vector> // Подключаем заголовочный файл для работы с векторами
#include <algorithm> // Подключаем заголовочный файл для использования функции sort()

struct Row { // Определяем структуру Row для представления строки с индексом и количеством солдат
    int index; // Индекс строки
    int soldiers; // Количество солдат
};

class Solution { // Определяем класс Solution
public:
    std::vector<int> kWeakestRows(std::vector<std::vector<int>>& mat, int k) { // Определяем метод kWeakestRows, принимающий матрицу и число k
        std::vector<Row> result; // Хранит строки с соответствующим количеством солдат
        std::vector<int> Rresult; // Хранит индексы k наименее сильных строк

        for (int i = 0; i < mat.size(); ++i) { // Итерируемся по строкам матрицы
            int rSum = 0; // Инициализируем переменную для хранения суммы солдат в текущей строке
            for (int j = 0; j < mat[i].size(); ++j) { // Итерируемся по элементам текущей строки
                rSum += mat[i][j]; // Вычисляем общее количество солдат в текущей строке
            }
            result.push_back({ i, rSum }); // Добавляем индекс строки и количество солдат в вектор result
        }

        std::sort(result.begin(), result.end(), [](const Row& a, const Row& b) { // Сортируем вектор result по количеству солдат
            if (a.soldiers == b.soldiers) // Если две строки имеют одинаковое количество солдат
                return a.index < b.index; // Сортируем по индексу
            return a.soldiers < b.soldiers; // Иначе сортируем по количеству солдат
        });

        for (int i = 0; i < k; ++i) { // Итерируемся k раз
            Rresult.push_back(result[i].index); // Добавляем индексы k наименее сильных строк в вектор Rresult
        }

        return Rresult; // Возвращаем вектор с индексами k наименее сильных строк
    }
};


