function padIt(str,n){
  let r0_str = "*", i = 0, r0_L = "", r0_R = ""
  while (i<n) {
    if (i%2===0) {
      r0_L += r0_str 
    } else {
      r0_R += r0_str
    }
    i += 1;
  }
  return r0_L + str + r0_R;
}

// const padIt = (string, n) => {
//   let result = string
//   let i = 0
//   while (i < n) {
//     if (i % 2 === 0) {
//       result = `*${result}`
//     } else {
//       result = `${result}*`
//     }
//     i += 1
//   }