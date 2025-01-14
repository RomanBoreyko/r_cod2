function disemvowel(str) {
    // var newStr = "",
    //     i;

    // for (i = 0; i < str.length; i++) {
    //     if ("aeiou".includes(str[i].toLowerCase())) continue;
    //   //включая каждую букву??? все свести к нижнему регистру???
    //     newStr += str[i]; // что? а это каждую букву вкидывают в новый стринг
    //     // где удаляются гласные буквы?
    // }
   let newStr = (str.replace(/A|E|I|O|U|a|e|i|o|u/g, ''))
   // реплейс удаляет указанные буквы? что делают / и /g ?
   return newStr;
}