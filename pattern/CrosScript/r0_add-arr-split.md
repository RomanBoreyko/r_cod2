```js
function addLength(str) {
  let r0_arr = str.split(" "), i  
  for (i = 0; i < r0_arr.length; i++) { //<
    r0_arr[i] +=" " + r0_arr[i].length;
  }
  return r0_arr
}
```

```csharp
using System;

public class Kata
{
  public static string[] AddLength(string str)
  {
    string[] r0_arr = str.Split(' ');
    for (int i = 0; i < r0_arr.Length; i++)
    {
      r0_arr[i] += " " + r0_arr[i].Length;
    }
    return r0_arr;
  }
}

```

```py
def add_length(string):
    r0_arr = string.split()
    for i in range(len(r0_arr)):
        r0_arr[i] += " " + str(len(r0_arr[i]))
    return r0_arr

```