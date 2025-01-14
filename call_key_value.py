def greet(language):
    r0 = {
        'english': 'Welcome',
        'czech': 'Vitejte',
        'danish': 'Velkomst',
        'dutch': 'Welkom',
        'estonian': 'Tere tulemast',
        'finnish': 'Tervetuloa',
        'flemish': 'Welgekomen',
        'french': 'Bienvenue',
        'german': 'Willkommen',
        'irish': 'Failte',
        'italian': 'Benvenuto',
        'latvian': 'Gaidits',
        'lithuanian': 'Laukiamas',
        'polish': 'Witamy',
        'spanish': 'Bienvenido',
        'swedish': 'Valkommen',
        'welsh': 'Croeso'
    }
    return r0[language] if language in r0 else r0['english']

    .get(language, 'Welcome')


# Вывод ключей
print("Ключи:")
for key in r0:
    print(key)

# Вывод значений
print("\nЗначения:")
for value in r0.values():
    print(value)
