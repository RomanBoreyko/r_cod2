// create пространство имен
namespace Calc
{
// в нем создаем доступный всем клас 
    public class Calculator
    {
        // переменную доступную только через этот класс
        // приватное поле для хранения значения
        private int _value;
        // екземпляр который принимает переменную
        // имеет метод Адд
        // Функция Add возвращает экземпляр класса Calculator, что позволяет использовать цепочку вызовов методов. Такой подход, известный как паттерн "Fluent API" или "Fluent Interface", позволяет записывать последовательные операции более компактно и удобно.
        public Calculator Add(int value)
        {
            // меняем значение
            _value += value;
            return this;
        }

        // возвращает финальное число
        public int Equals() => _value;
    }
}