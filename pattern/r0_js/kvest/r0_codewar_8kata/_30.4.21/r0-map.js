function maps(x){
  let r0_arr = new Array()
  for (let i = 0; i < x.length; i++) {
    r0_arr.push(x[i] * 2);
  }
  return r0_arr;
  // return x.map(n => n * 2);
}
