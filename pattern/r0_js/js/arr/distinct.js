 let rArr = rArr.filter((r0, r1) => rArr.indexOf(r0) == r1);
// new set
  let newSet = new Set(arr); return Array.from(newSet)
  //
    return [...new Set(arr)];

//перебрать и удалить дубликаты
    // через два фор
    const distinct = a => {
      let r = [...a]; 
      for(let i1=0; i1<=a.length; i1++){
        for(let i2=i1+1; i2<=r.length; i2++){
          if(a[i1]==r[i2]){delete r[i2];}
        }
      }
      //удалить пустые еллемменты массива
      return r.filter(function (el) {return el != null;});;
  }
// пересобрать
  for (const i of names) !r0.includes(i) ? r0.push(i) :0;
  for (const i of names) r0.includes(i) ? 0 : r0.push(i);

