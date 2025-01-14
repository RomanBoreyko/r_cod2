def rain_amount(rain_amount):
    if rain_amount < 40:
        return "You need to give your plant " + str(40 - rain_amount) + "mm of water"
    else:
        return "Your plant has had more than enough water for today!"

def rain_amount(mm):
    if mm < 40:
        return 'You need to give your plant {}mm of water'.format(40 - mm)
    return 'Your plant has had more than enough water for today!'

def derive(coefficient, exponent):
    return str(coefficient*exponent) + "x^" + str(exponent-1)  # Возвращаем строку с результатом

def derive(coefficient, exponent): 
    return f'{coefficient * exponent}x^{exponent - 1}'

def derive(coefficient, exponent): 
    return("{}x^{}".format(coefficient*exponent, exponent-1))
def derive(coeff, exp): 
    return f"{coeff * exp}x^{exp - 1}"