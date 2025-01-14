let i=2, j=0;
while(i*i <= n && j != 1){
  if(n%i === 0) {j=1; i++;}else{i++}
}
return j===1 ? "Составное число" : "Простое число";

//наименьший делитель целый императивный код
let i=2;
for(i;i<n;i++){if(n%i===0){return i}}return n;
// простое число тру (на себя и на 1)
if(n<i){return false};
for(i;i<n;i++){if(n%i===0){return false}}return true
//
for (i;n%i && n>1;i++) {}
return (n===i)?true:false;