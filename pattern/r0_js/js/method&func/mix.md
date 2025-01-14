//минус разница ел вложенный массив () суммирование el
    busStops.map(e=>e[0]-e[1]).reduce((a,b)=>a+b);
    let r=0; for(const i of busStops)r+=i[0]-i[1];
    busStops.reduce((rem, [on, off]) => rem + on - off, 0);
    busStops.reduce((p,n) => p+n[0]-n[1],0)

// развернуть слова в строке
    // str=str.split(' ');for(let i=0;i<str.length;i++)str[i]=str[i].split('').reverse().join('');return str.join(' ');
    str.split(' ').map(e=>e.split('').reverse().join('')).join(' ');

for(i=0; i<arr.length; i++) a[i] = arr[(arr.length-1)-i]// разворот массива развернут разверни

// заменить цифры в str='53681';
  // let r= str.split('').map(Number);for(let i=0; i<r.length; i++)r[i]<5?r[i]='1':r[i]='0';
  str.split('').map(e=>Number(e)<5?'1':'0').join('');

// abcdefghijklm содержит знаки nopqrstuvwxyz = error
    //regex
        s.match(/[^a-m]/g).length
    // for let error = 0;
        for(const i of s) !'abcdefghijklm'.includes(i) ? error++ :0;

//numbers, divisor
    numbers.filter(n => n % divisor === 0)//filter
    // let r = [];
        for(const x of numbers) x%divisor===0 ? r.push(x) :0; return r;//for
        numbers.map(x => x%divisor===0 ? r.push(x) :0); return r;//map

// arr
    arr.filter((el,i)=> i%2 === 0)// filter
    // let r = [];
        for (let i=0; i<arr.length; i++) i%2==0 ? r.push(arr[i]) :0; return r;
        for (let i=0; i<arr.length; i+=2) r.push(arr[i]); return r;
        for (let i=1; i<arr.length; i++) arr.splice(i,1); return arr;
        arr.map(i=> i%2==0 ? r.push(arr[i]) :0; return r;//map

//
    let r = 0;
    arr.sort((a,b)=>b-a);
    for(let i=1; i<arr.length; i++) r+=arr[i-1]-arr[i];
    return r;
    // arr.sort((a,b)=>b-a).map((e,i)=> e-arr[i+1] || 0).reduce((a,b)=> a+b, 0);
    // arr.length > 1 ? Math.max(...arr) - Math.min(...arr) : 0;