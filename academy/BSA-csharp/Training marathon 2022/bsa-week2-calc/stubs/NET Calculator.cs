using System;

namespace CalculatorApp
{
    // Пространство имен "CalculatorApp"
	// чтобы создать екстеншын метод нужен любой статик класс
    public static class Calculator
    {
        // Публичный класс "Calculator", представляющий калькулятор
        private double _result;
        // Приватное поле "_result" для хранения результата вычислений

		//
        public Calculator(double initialValue)
        {
            // Конструктор класса Calculator, принимающий начальное значение

            _result = initialValue;
            // Инициализация поля "_result" начальным значением
        }

        public Calculator Add(double value)
        {
            // Метод "Add", который добавляет значение к результату

            _result += value;
            // Добавление значения к текущему результату

            return this;
            // Возвращаем текущий экземпляр калькулятора для возможности цепочки вызовов методов
        }

        public Calculator Subtract(double value)
        {
            // Метод "Subtract", который вычитает значение из результата

            _result -= value;
            // Вычитание значения из текущего результата

            return this;
            // Возвращаем текущий экземпляр калькулятора для возможности цепочки вызовов методов
        }

        public Calculator MultiplyBy(double value)
        {
            // Метод "MultiplyBy", который умножает результат на значение

            _result *= value;
            // Умножение текущего результата на значение

            return this;
            // Возвращаем текущий экземпляр калькулятора для возможности цепочки вызовов методов
        }

        public Calculator DivideBy(double value)
        {
            // Метод "DivideBy", который делит результат на значение

            if (value == 0)
            {
                throw new ArgumentException("Division by zero is not allowed.");
            }
            // Проверка, что значение не равно нулю. Если равно, выбрасываем исключение.

            _result /= value;
            // Деление текущего результата на значение

            return this;
            // Возвращаем текущий экземпляр калькулятора для возможности цепочки вызовов методов
        }

        public double Equals()
        {
            // Метод "Equals", который возвращает текущий результат

            return _result;
            // Возвращаем текущий результат
        }
    }

    class Program
    {
        // Класс "Program", отвечающий за точку входа в программу

        static void Main(string[] args)
        {
            // Метод "Main", который является точкой входа в программу

            var result = new Calculator(5)
                .Add(10)
                .MultiplyBy(2)
                .Equals();
            // Создаем экземпляр калькулятора с начальным значением 5, добавляем 10, умножаем на 2 и получаем результат

            Console.WriteLine(result); // Выводим результат в консоль. Ожидаемый вывод: 30

            try
            {
                result = new Calculator(10)
                    .DivideBy(0)
                    .Equals();
                // Создаем экземпляр калькулятора с начальным значением 10, пытаемся поделить на 0 (деление на ноль не разрешено), и получаем результат
            }
            catch (ArgumentException ex)
            {
                Console.WriteLine(ex.Message); // Выводим сообщение об ошибке в консоль. Ожидаемый вывод: Division by zero is not allowed.
            }
        }
    }
}
