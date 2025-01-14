var summation = function (num) {
  let r0 = 0;
  for (let i = 0; i <= num; i++) {// почему равно?
    r0 += i;
  }
  return r0;
}