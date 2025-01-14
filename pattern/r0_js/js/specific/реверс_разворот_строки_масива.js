// развернуть слова в строке
    // str=str.split(' ');for(let i=0;i<str.length;i++)str[i]=str[i].split('').reverse().join('');return str.join(' ');
    str.split(' ').map(e=>e.split('').reverse().join('')).join(' ');

for(let i=0;i<arr.length;i++)a[i]=arr[(arr.length-1)-i]
// разворот массива развернут разверни
myarray.sort().reverse()// реверс абс
parseInt(String(n).split('').sort().reverse().join(''))// revers

// вытащить первый ел rCanged // вставить этот ел в конец масс
  const rEnd = [];
  for (let i=0; i<rNoChange.length; i++)rEnd.push(rCanged.pop());
  return rEnd.join(' '); // сшивание масс через пробел в строку

return str.split(' ').reverse().join(' ');//////// alt

var str = '12345';[].map.call(str, x=>x).reverse().join(''); ////////////

function solution(str) {
    let r0 = '', i; // что за "i"? чтозачем кавычки?
    // цикл воспроизводится пока не закончатся знаки в переменной str
    for (i = str.length - 1; i >= 0; i--) {// колитчество знаков воспринимается через .length
     r0 += str.charAt(i);// порядковый номер возвращаемого символа определяет "i"
     // .charAt() возвращает один символ из строки (переменной str)
    }
    return r0;
  }
  
  //альтернативы
  //Метод split() разбивает объект String на массив строк путём разделения строки указанной подстрокой.
  //Метод reverse() на месте обращает порядок следования элементов массива. Первый элемент массива становится последним, а последний — первым.
  //Метод join() объединяет все элементы массива (или массивоподобного объекта) в строку.
  //return str.split("").reverse().join("");
  
  
