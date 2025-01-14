// внемасива
  if(a>b) {rMax=a; rMin=b;} else {rMax=b; rMin=a;};
//Math.
  const max = (arr) => Math.max(...arr);
  const min = (arr) => Math.min(...arr);
// for макс
  let rMax = 0;
  for(const i of rArr){i>rMax?rMax=i:0}
// for мин
  let rMin = rArr[0];
  for(const i of rArr){i<rMin?rMin=i:0}

//.reduce
let rMax=arr.reduce((a,i)=>a>i?a:i);
let rMin=arr.reduce((a,i)=>a<i?a:i);
//sort by max
for (const i of rArr) {
  let rMax = rClon.reduce((a,i)=>a>i ? a:i);
  rResult.push(rMax);
  rClon.splice(rClon.indexOf(rMax), 1);
}
rResult = Number(rResult.join(''));



/// скорость
function arrayMin(arr) {
  var len = arr.length, min = Infinity;
  while (len--) {
    if (arr[len] < min) {
      min = arr[len];
    }
  }
  return min;
}

function arrayMax(arr) {
  var len = arr.length, max = -Infinity;
  while (len--) {
    if (arr[len] > max) {
      max = arr[len];
    }
  }
  return max;
}

//макс и мин значения чисел
  if (n === 1/0 || n === Infinity+1) {return Number.POSITIVE_INFINITY}
  if (n === -Number.MAX_VALUE*2) {return Number.NEGATIVE_INFINITY}
  if (isNaN(n)) {return Number.NaN}
  if (n === 1.7976931348623157e+308) {return Number.MAX_VALUE}
  if (n === 5e-324) {return Number.MIN_VALUE}
  if (n > 0) {return r0 + n}

  if (n === Number.POSITIVE_INFINITY) {return 'Number.POSITIVE_INFINITY'}
  if (n === Number.NEGATIVE_INFINITY) {return 'Number.NEGATIVE_INFINITY'}
  if (n === Number.MAX_VALUE) {return 'Number.MAX_VALUE'}
  if (n === Number.MIN_VALUE) {return 'Number.MIN_VALUE'}
  if (n > 0) {return r0 + n}
  // if (isNaN(n)) {return 'Number.NaN'}