namespace Calc
{
    public class Calculator
    {
        private int _value;
        public Calculator Add(int value)
        {
            _value += value;
            return this; 
        }
    }
}
