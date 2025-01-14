//обращение к последнему ел
имя[имя.length-1];
//обращение к еллемменту массива
for(const i of arr){}

//обращение к последнему еллементу массива
array[array.length - 1]
array.slice(-1)
array.pop()

// обращение к ключю обж
for (const key in obj){key}
// обращение к содержимому ключа обж
for (const key in obj){obj[key]}

// обращение к первой букве в строке первого еллеммента массива
rArr[0][0]
	//измена сторки
	rArr[i] = rArr[i].substr(0, 1).toUpperCase() + rArr[i].substr(1)
	// обращение к первому символу ел масс и изменение по хардкоду
	let r0 = str.split(' ').filter(n => n);
	for (let i = 0; i < r0.length; i++) {
		r0[i] = r0[i].split('');
		r0[i][0] = r0[i][0].toUpperCase();
		r0[i] = r0[i].join('')
	}
	r0 = r0.join('');

// obj
Можете сделать Object.values(inputObject),
получите массив, можете перебрать его и сделать проверку на isArray,
если условие верное, то зайдите внутрь этого элемента-массива и возьмите то, что вам надо
