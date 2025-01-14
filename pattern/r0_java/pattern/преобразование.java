// Делать это лучше с помощью метода parseInt класса Integer. Метод parseInt должен преобразовать String в int и выдает исключение NumberFormatException, если строка не может быть преобразована в тип int.
int символ = Integer.parseInt(строка);    
// строку в масив, из строки в масив
    // String[] строка_в_массив = строка.split(" ");
    char[] масив_знаков = строка.toCharArray();

// Alphabet war сложно в понимании
int t = fight.chars()
    .reduce(0, (a, b) -> (b = "wpbs0zdqm".indexOf(b)) < 0 ? a : a + b - 4);
return t == 0 ? "Let's fight again!" : (t < 0 ? "Left" : "Right") + " side wins!";
// Alphabet war просто и понятно
int right = 0, left = 0;
for (char c : fight.toCharArray()) {
    switch (c) {
        case 'w' : left += 4; break;
        case 'p' : left += 3; break;
        case 'b' : left += 2; break;
        case 's' : left += 1; break;

        case 'm' : right += 4; break;
        case 'q' : right += 3; break;
        case 'd' : right += 2; break;
        case 'z' : right += 1; break;
    }
}
if (left == right) return "Let's fight again!";
return (left > right ? "Left" : "Right") + " side wins!";

