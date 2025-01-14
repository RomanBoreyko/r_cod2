//добавить в стринг
for (let i = 0; i < string.length; i++) {
	r0 += string[i] + string[i];
}

//добавить в ячейку arr через .map, начиная со второй
for(let i = 1; i<r.length; i++)r[i]='***'+r[i];
.sort()[0].split('').join('***')
.sort()[0].replace(/(.)(?=.{1,}$)/g, '$1***');

