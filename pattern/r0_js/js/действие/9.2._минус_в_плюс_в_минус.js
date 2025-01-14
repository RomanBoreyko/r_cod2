// в плюс
	rArr[i] = Math.abs(array[i]);
	rArr[i] = array[i] * (-1);

// в минус
	rArr[i] = -Math.abs(array[i]);

// - +
	rArr.push(-array[i]);

// - + // обход 0 и []
	array.map(i=> i===0 ? i : -i);
//
	array.map(i=> 0-i);
//
  for(const rKey of array){rArr.push(-rKey)};
