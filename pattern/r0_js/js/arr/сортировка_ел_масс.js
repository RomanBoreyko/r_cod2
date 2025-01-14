// long
let n = 42145;
let r0 = n.toString().split('').map(Number);// цифру в масив цифр
let rClon = r0.slice(0);//клонирование масива скопировать массив
let r = [...a]; 
let rResult = [];

for (const i of r0) {
	let rMax = rClon.reduce((a,i)=>a>i?a:i);
	rResult.push(rMax);
	// const idx = rClon.indexOf(rMax);// найти индекс rMax в массиве
	rClon.splice(rClon.indexOf(rMax), 1);
}
rResult = Number(rResult.join(''));

//
rClon.splice(rClon // del max el
	.indexOf(n // индекс макс
		.toString() // в строку
		.split('') // в масив
		.map(Number) // в числа
		.reduce((a,i)=>a>i?a:i);), 1);// макс??

rResult = Number(rResult
	.push(n.toString()
		.split('')
		.map(Number)
		.reduce((a,i)=>a>i?a:i))
	.join(''));
