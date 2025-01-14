// сортировка масива чисел от мин до макс
	rArr.sort((a,b)=> a - b);
// сортировка масива чисел от макс до мин
	rArr.sort((a,b)=> b - a);
// сортировка масива символов
	rArr.sort((a,b)=> b.localeCompare(a));

// long
let n = 42145;
let rArr = n.toString().split('').map(Number); // цифру в масив цифр
let rClon = rArr.slice(0); //клонирование масива
let rResult = [];

//sort by max
for (const i of rArr) {
	let rMax = rClon.reduce((a,i)=>a>i ? a:i);
	rResult.push(rMax);
	rClon.splice(rClon.indexOf(rMax), 1);
}
rResult = Number(rResult.join(''));

//
(nums || []).sort(function(a, b){return a - b});
