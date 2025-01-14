def chromosome_check(sperm):
    return 'Congratulations! You\'re going to have a {}.'.format('son' if 'Y' in sperm else 'daughter')

def chromosome_check(sperm):
    gender = 'son' if 'Y' in sperm else 'daughter'
    return f"Congratulations! You're going to have a {gender}."

def chromosome_check(sperm):
    if sperm == "XY":
        return("Congratulations! You're going to have a son.")
    else:
        return("Congratulations! You're going to have a daughter.")
        