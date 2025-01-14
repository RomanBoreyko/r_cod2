let i=0;
function my_function(n){
    i++;
    return (i<=n) ?  ' ' + i + my_function(n): " "
}
function r0(arr, n) {
	return n<=0?0: r0(arr,n-1)+arr[n-1];
}

function rangeOfNumbers(startNum, endNum) {
  if (startNum===endNum) {return [endNum]}
  else {
    let r0=rangeOfNumbers(startNum, endNum-1);//хз почему сначяла минус
    r0.push(endNum);
    return r0;
  }
};// выжно именно через endNum рекурсивная функция схлопывается в возрастающем порядке