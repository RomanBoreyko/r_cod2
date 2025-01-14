def position(input_value):
    if 'a' <= input_value <= 'z' or 'A' <= input_value <= 'Z':
        char_value = ord(input_value)
        if 'a' <= input_value <= 'z': 
            letter_number = char_value - ord('a') + 1
        else:
            letter_number = char_value - ord('A') + 1
        return f"Position of alphabet: {letter_number}"
    elif input_value.isdigit():
        return int(input_value)
    else:
        return "Invalid input: Not a digit or letter from the English alphabet."

def position(alphabet):
    return "Position of alphabet: {}".format(ord(alphabet) - 96)


def position(alphabet):
    return "Position of alphabet: %s" % ("abcdefghijklmnopqrstuvwxyz".find(alphabet) + 1)


def position(letter):
    return "Position of alphabet: %d" % (ord(letter) - 96)

position = lambda i:"Position of alphabet: %i"%(ord(i)-96)

        