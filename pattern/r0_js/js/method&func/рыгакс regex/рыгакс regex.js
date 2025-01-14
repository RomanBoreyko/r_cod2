https://regex101.com/
// проверка на содержание
^ значит реагировать по первому символу или отрицание-противоположность
    // [^A-Z]
    // ^[a-z]
    // Есть хоть одна буква в верхнем регистре;
    // Есть хоть одна буква в нижнем регистре;
    // Есть хоть одна цифра;
    // Длина пароля не менее 8-ми символов;
    // Пароль содержит только латинские буквы и цифры.
    // \W matches any non-word character (equivalent to [^a-zA-Z0-9_])
    function validatePassword(password) {
        if (/\W/.test(password)) return false;
      
        if (/[A-Z]/.test(password) &&
          /[a-z]/.test(password) &&
          /\d/.test(password) &&
          /.{8}/.test(password)) {
          return true;
        }
        return false;
    }

// abcdefghijklm содержит знаки nopqrstuvwxyz = error
    //regex
    s.match(/[^a-m]/g).length
    // for let error = 0;
        for(const i of s) !'abcdefghijklm'.includes(i) ? error++ :0;
