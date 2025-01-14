[[average]] [[sum]] [[array]]
``` c#
// Код для вычисления среднего значения массива

class AverageSolution {
  public static double FindAverage(double[] array) {
    double average = 0; // Переменная для хранения суммы элементов массива
    if (array.Length > 0) // Проверяем, что массив не пустой
    {
      for (int i = 0; i < array.Length; i++) // Проходим по каждому элементу массива
      {
        average += array[i]; // Суммируем элементы массива
      }
      return average / array.Length; // Возвращаем среднее значение, разделив сумму на количество элементов
    }
    return 0; // Если массив пустой, возвращаем 0
  }
}
```

``` c#
// Код для вычисления среднего значения массива с использованием LINQ

using System.Linq; // Подключаем пространство имен для использования LINQ

class AverageSolution {
  public static double FindAverage(double[] array) {
    return array.Length == 0 ? 0 : array.Average(); // Возвращаем среднее значение массива с использованием метода Average() из LINQ. Если массив пустой, возвращаем 0.
  }
}

```

``` c#
// Код для вычисления среднего значения массива с использованием выражения-тела метода и LINQ

using System.Linq; // Подключаем пространство имен для использования LINQ

public class AverageSolution {
  public static double FindAverage(double[] array) => array.Average(); // Возвращаем среднее значение массива с использованием метода Average() из LINQ. Используем выражение-тело метода.
}
```

