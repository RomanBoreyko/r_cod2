// array
	for (const rKey of rArr) {rSum += rKey
	// .map(i => i < r1 ? r2 : r3)
	rArr.reduce((a,b) => a+b);
	// склеить два массива в один
	[...arr1, ...arr2]
// obj
// в масс определённый ел обж
	let rSum = 0;
	for (const i of rArr) {
		for (const rKey in i) {
			rKey === 'ИмяЕл' ? rSum += i[rKey] : 0
		}
	}
	return countries.length === 0 ? 0 : rSum;

}
