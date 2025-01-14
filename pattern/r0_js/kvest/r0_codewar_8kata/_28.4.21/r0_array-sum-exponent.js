function arrayMadness(a, b) {
//    return a.reduce((acc, cur) => acc + (cur ** 2), 0) > b.reduce((acc, cur) => acc + (cur ** 3), 0);
//    return sum(i**2 for i in a) > sum(i**3 for i in b)
  let r0_a = 0; let r0_b = 0;
  for ( let i = 0; i < a.length; i++) {
    r0_a += a[i]**2;
  }
  for ( let ii = 0; ii < b.length; ii++) {
    r0_b += b[ii]**3;
  }
  return r0_a >= r0_b;
  if (r0_a < r0_b) {
    return true;
  } else {
    return false;
  }
}