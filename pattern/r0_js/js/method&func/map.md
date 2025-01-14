//.map((el,index)=>);


// заменить цифры в str='53681';
  // let r= str.split('').map(Number);
  // for(let i=0; i<r.length; i++)r[i]<5?r[i]='1':r[i]='0';
  str.split('').map(e=>Number(e)<5?'1':'0').join('');

//data = [[1,2][3,4][5,6]]
let r=[]; for(const e of data){r.push(e[0]>=55 && e[1]>7 ? 'Senior':'Open')}; return r;
data.map(e=> e[0]>=55 && e[1]>7 ? 'Senior':'Open');

//строку в масив, к каждому елемменту добавить дубликат, объеденить в строку
  const doubleChar = (str) => str.split("").map(c => c + c).join("");
  // let rStr = '';
  // for(let i = 0; i<str.length; i++)rStr += str[i] + str[i];

// upperCase to lowerCase
  string.split("").map(x => x===x.toUpperCase()?x.toLowerCase():x.toUpperCase()).join("");
  массив.map(имя_ => );

// .map(i => i < r1 ? r2 : r3)
// преобразование строк в числа
  ['1', '2', '3'].map(Number) 

//в строку > в масив > в числа
const r2 = String(n).split('').map(Number);
// число в масив чисел let num = 123456;
let rArr = num.toString().split('').map(Number);

// for to 
  //map
    rArr.map(n=> n<5 ? 0:1)
  //for let rAccum = 0;
    for (let i = 0; i < array.length; i++) {
      if (array[i][0] > array[i][2]){rAccum += 3;}
      else if (array[i][0] === array[i][2]){rAccum += 1;}
    } return rAccum;
    //reduce
      const points=array=>array.reduce((rAccum,i)=>{rAccum += i[0]>i[2] ? 3 : i[0]===i[2] ? 1 : 0;},0)


// - + // обход 0 и []
array.map(i=> i===0 ? i : -i);
//
	array.map(i=> 0-i);

	// .map(i => i < r1 ? r2 : r3)

  // return x.map(n => n * 2);

  //.map js обращение к последнему ел

  // удалить через .map
  .filter(