//дубликаты
  const r0 = [];// масив с ел items но без дубликатов
  const r1 = [];// масив с ел items которые is дубликаты
  const r2 = [];// масив с дубликатами по distinct
  for (const i of items) r0.includes(i) ? r1.push(i) : r0.push(i);
  for (const i of r1) !r2.includes(i) ? r2.push(i) : 0;
  return r2;

// удалить дубликаты из массива //удалить повторяющиеся элементы массива
	массив.filter((item, pos) => массив.indexOf(item) == pos)
    //пресобрать в новый массив, если в масиве еще нет числа то мы его туда положим
	for (const i of names) r0.includes(i) ? 0 : r0.push(i);

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

    //через фильтр
        const distinct=a=>a.filter((item,index)=>a.indexOf(item)===index);

    //пресобрать в новый массив, если в масиве еще нет числа то мы его туда положим
    for(let i = 0; i < arr.length; i++){
        if(!новыйМассив.includes(arr[i]))новыйМассив.push(arr[i]);
    //
    for (const i of names) !r0.includes(i) ? r0.push(i) :0;
    for (const i of names) r0.includes(i) ? 0 : r0.push(i);

//каждый знак в строке = продублировать
