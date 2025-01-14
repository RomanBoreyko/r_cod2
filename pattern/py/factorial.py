def factorial(n):
    if n < 0 or n > 12:
        raise ValueError("n должно быть в диапазоне от 0 до 12")
    r_result = 1
    for i in range(n):
        r_result *= (i + 1)
    return r_result


def factorial(n):
    if n < 0 or n > 12:
        raise ValueError
    return 1 if n <= 1 else n*factorial(n-1)

from math import factorial as fac

def factorial(n):
    if n < 0 or 12 < n:
        raise ValueError
    return fac(n)

