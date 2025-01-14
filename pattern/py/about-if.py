def quarter_of(month):
    # your code here
    if month in range(1, 4):
        return 1
    elif month in range(4, 7):
        return 2
    elif month in range(7, 10):
        return 3
    elif month in range(10, 13):
        return 4




from math import ceil
def quarter_of(month):
    return ceil(month / 3)


def quarter_of(n):
    return (n + 2) // 3


def quarter_of(month):
    season = {1: 1, 2: 1, 3: 1, 
              4: 2, 5: 2, 6: 2,
              7: 3, 8: 3, 9: 3,
              10: 4, 11: 4, 12: 4}
    return season[month]


    


        
