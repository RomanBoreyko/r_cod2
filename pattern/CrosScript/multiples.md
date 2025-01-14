```js
function solution(number){
  let r0 = 0;
  for (let i = 0; i < number; i++)
    i % 3 === 0 || i % 5 === 0 ? r0 += i : 0
  return r0
}
```

```c#
public static class Kata
{
  public static int Solution(int number)
  {
    int r0 = 0;
    for (int i = 0; i < number; i++)
    {
        if (i % 3 == 0 || i % 5 == 0)
        {
            r0 += i;
        }
    }
    return r0;
  }
}
```

```python
def solution(number):
    r0 = 0
    for i in range(number):
        if i % 3 == 0 or i % 5 == 0:
            r0 += i
    return r0

```
