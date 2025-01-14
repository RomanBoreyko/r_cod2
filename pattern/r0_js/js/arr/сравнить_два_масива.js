// сравнить
// 	совпадают ли все еллементы первого масива
// 		с каждым еллемментом второго массива лично

// сравнить один масив с концом другого
const solution=(str,ending)=>{
    str=str.split('');
    ending=ending.split('');
    let rCounter = ending.length;
    let rCounter1 = 0;
    let rResult;
    if(rCounter == ''){return true}
    for (let i=0;i<rCounter;rCounter--) {
      rResult = str[str.length-rCounter]==ending[rCounter1] ? true : false;
      if(rResult == true){rCounter1++}else{return false};
    }
    return rResult;
}
// Символы, искомые в конце строки.
const solution = (str, ending) => str.endsWith(ending);
