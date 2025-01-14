# функция
def sum_mul(n, m):
# заявние(statement) для сравнения по условию(condition)
    if m<=0 or n<=0:
        return "INVALID"
    total = 0
# цикл фор
    for n2 in range(0, m, n):
        total += n2
    return total

def sum_mul(n, m):
    if m>0 and n>0:
        return sum(range(n, m, n))
    else:
        return 'INVALID'

def sum_mul(n, m):
    return sum(x for x in range(n, m, n)) if m > 0 and n > 0 else 'INVALID'

def sum_mul(n, m):
    return sum(range(n, m, n)) if n > 0 and m > 0 else "INVALID"
    
def simple_multiplication(number) :
    # Your code goes here
    return number*9 if number%2 else number*8

def simple_multiplication(n) :
    return n * (8 + n%2)
