```js
function bmi(weight, height) {
  const rResult = weight / Math.pow(height, 2);
  if (rResult <= 18.5) {
    return "Underweight"
  } else if (rResult <= 25) {
    return "Normal"
  } else if (rResult <= 30) {
    return "Overweight"
  } else if (rResult > 30) {
    return "Obese"
  }
}
```

```C#
using System;

public class Kata
{
    public static string Bmi(double weight, double height)
    {
        double result = weight / Math.Pow(height, 2);
        if (result <= 18.5)
        {
            return "Underweight";
        }
        else if (result <= 25)
        {
            return "Normal";
        }
        else if (result <= 30)
        {
            return "Overweight";
        }
        else
        {
            return "Obese";
        }
    }
}
```

```py
def bmi(weight, height):
    result = weight / height ** 2
    if result <= 18.5:
        return "Underweight"
    elif result <= 25:
        return "Normal"
    elif result <= 30:
        return "Overweight"
    else:
        return "Obese"

```