def calculate_years(principal, interest, tax, desired):
    years = 0
    while principal < desired:
        interest_earned = principal * interest
        taxed_interest = interest_earned * (1 - tax)
        principal += taxed_interest
        years += 1
    return years

from math import ceil, log

def calculate_years(principal, interest, tax, desired):
    return ceil(log(float(desired) / principal, 1 + interest * (1 - tax)))

