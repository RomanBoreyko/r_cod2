function mergeArrays(a, b) {
  let i, win = []
  for (i=0; a[i] || b[i]; i++) {
    if (a[i]) {win.push(a[i])}
    if (b[i]) {win.push(b[i])}
  } return win
}
function mergeArrays(a, b) {
  let i, win = [], r0_arr = a.length + b.length
  for (i=0; i<r0_arr; i++) {
    if (i<a.length && i<b.length) {
      win.push(a[i]);
      win.push(b[i]);
    } else if (a[i]!=undefined) {
      win.push(a[i])
    } else if (b[i]!=undefined) {
      win.push(b[i])
    }
  }
  return win
}
function mergeArrays(a, b) {
  var returnArray = [];
  var counter = 0;
  while (a[counter] || b[counter] ){
    if(a[counter]){      returnArray.push(a[counter]);}
    if(b[counter]){      returnArray.push(b[counter]);}
    counter++;
   }
   return returnArray;
}