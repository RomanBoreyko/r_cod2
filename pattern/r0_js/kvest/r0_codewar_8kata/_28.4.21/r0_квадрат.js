function squareSum(numbers){
  let r0_numbers = 0;
  for (let i = 0; i < numbers.length; i++) {
    r0_numbers += numbers[i] ** 2;
  }
  return r0_numbers;
}