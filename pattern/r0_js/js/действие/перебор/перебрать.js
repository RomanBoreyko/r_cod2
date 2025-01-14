//перебрать и удалить дубликаты
    // через два фор
    const distinct=a=>
    {
        let r = [...a]; 
        for(let i1=0; i1<=a.length; i1++){
            for(let i2=i1+1; i2<=r.length; i2++){
                if(a[i1]==r[i2]){delete r[i2];}
            }
        }
        //удалить пустые еллемменты массива
        return r.filter(function(el) {return el != null;});;
    }

    //через фильтр
    const distinct=a=>a.filter((item,index)=>a.indexOf(item)===index);

    //пресобрать в новый массив, если в масиве еще нет числа то мы его туда положим
    for(let i = 0; i < arr.length; i++){
        if(!новыйМассив.includes(arr[i]))новыйМассив.push(arr[i]);
    //
    for (const i of names) !r0.includes(i) ? r0.push(i) :0;
    for (const i of names) r0.includes(i) ? 0 : r0.push(i);

// и послать если совпадает содержимое
    const r0_abc = 'abcdefghijklmnopqrstuvwxyz';
    let r_false = true;
    for(let i=0; i<this.length; i++) {
		r0_abc.includes(this[i]) ? r_false = false : 1;
    }
    return r_false;
    // this==this.toUpperCase()
    // !/[a-z]/.test(this);
    // /^[^a-z]+$/.test(this)
    
