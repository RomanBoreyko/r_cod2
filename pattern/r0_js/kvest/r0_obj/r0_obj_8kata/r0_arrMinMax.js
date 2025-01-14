function pipeFix(numbers){
  const result = [];
  let ri = 0, rMin = numbers[0], rMax = numbers[0];
  for (const i of numbers) {
    if (i < rMin) { rMin = i; }
    else if (i > rMax) { rMax = i; }
  }
  for(rMin; rMin <= rMax; rMin++) {
    result[ri] = rMin; //arr.push(rMin)
    ri++
  }
  return result;
}