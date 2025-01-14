//умножение складывание в массив
const findMultiples = (integer, limit) => {
    let r = [];
    // let r_limit = Math.floor(limit/integer);
    // for(let i=1; i<=r_limit; i++)r.push(integer*i);
    for(let i=integer; i<=limit; i+=integer)r.push(i);

    return r;
}