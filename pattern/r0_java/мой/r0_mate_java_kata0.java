// Write your code below this line
public int[] getDivisibleNumbers(int[] numbers, int divider) {
        int myLength = 0;
        for (int i : numbers) {
        if (i > 0 && i % divider == 0) {
        myLength++;
        }
        }
        int[] r0ArrResult = new int[myLength];
        myLength = 0;
        for (int i : numbers) {
        if (i > 0 && i % divider == 0) {
        r0ArrResult[myLength] = i;
        myLength++;
        }
        }
        return r0ArrResult;
        }
// Write your code above this line