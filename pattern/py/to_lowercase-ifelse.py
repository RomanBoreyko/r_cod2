def get_drink_by_profession(param):
    param_lower = param.lower()  # Convert the input to lowercase
    if param_lower == "jabroni":
        return "Patron Tequila"
    elif param_lower == "school counselor":
        return "Anything with Alcohol"
    elif param_lower == "programmer":
        return "Hipster Craft Beer"
    elif param_lower == "bike gang member":
        return "Moonshine"
    elif param_lower == "politician":
        return "Your tax dollars"
    elif param_lower == "rapper":
        return "Cristal"
    else:
        return "Beer"