
const all = (arr, fun) => arr.reduce((a,i) => !!fun(i), true);

//.reduce
  let rMax=arr.reduce((a,i)=>a>i?a:i);
  let rMin=arr.reduce((a,i)=>a<i?a:i);
//sort by max
  for (const i of rArr) {
    let rMax = rClon.reduce((a,i)=>a>i?a:i);
    rResult.push(rMax);
    rClon.splice(rClon.indexOf(rMax), 1);
  }
  rResult = Number(rResult.join(''));

// можно удалить лично не выискивая ел в масс
array.reduce((a,b) => a+b) - rMax - rMin

// array
  for (const rKey of rArr)rSum += rKey;
  rArr.reduce((a,b) => a+b);

// склеить два массива в один
	[...arr1, ...arr2]

//for to reduce
  const points=array=>array.reduce((rAccum,i)=>{
      return rAccum += i[0]>i[2] ? 3 : i[0]===i[2] ? 1 : 0;
  },0)

//for to reduce
let rAccum = 0;
for (let i = 0; i < array.length; i++) {
  if (array[i][0] > array[i][2]){rAccum += 3;}
  else if (array[i][0] === array[i][2]){rAccum += 1;}
} return rAccum;

.reduce((a,i)=>a>i?a:i);), 1);// макс??

let rMax = rClon.reduce((a,i)=>a>i?a:i);

const rSum = testResults.reduce((x, y) => x + y);

//    return a.reduce((acc, cur) => acc + (cur ** 2), 0) > b.reduce((acc, cur) => acc + (cur ** 3), 0);

// превращение масива в обж
const toObj = (arr) => arr.reduce((a, b) => ({ ...a, ...b }));

// превращение масива в обж
function countLettersInString(str) {
  return str.split('').sort().reduce((rObj, elem) => {
    rObj[elem] ? rObj[elem] += 1 : rObj[elem] = 1;
    return rObj;
  }, {});
