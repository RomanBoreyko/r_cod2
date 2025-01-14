function factorial(n){
	let result = 1;
	while (n > 0) {
		result *= n;
		n--;
	}
	return result;
}
// const factorial = n => n ? factorial(n - 1) * n : 1;

// const factorial=n=>n?n*factorial(n-1):1;
//   return n ? n * factorial(n-1) : 1;
//   let result = n;
// //   if(n<0){return null}
//   if(n===1||n===0){return 1}
//   else {
//     while(n>=2){
//     n--;
//     result *= n;
//   }
//     return result;
//   }