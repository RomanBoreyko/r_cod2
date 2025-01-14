//Create a JavaScript Promise
const r0 = new Promise((resolve, reject)=>{});
// pending, fulfilledи rejected
const r0 = new Promise((resolve, reject) => {
  let r1 = true;
  if(r1){resolve("We got the data")}
  else{reject("Data not received")}
});
r0.then(result=>{console.log(result)});
r0.catch(error=>{console.log(result)});