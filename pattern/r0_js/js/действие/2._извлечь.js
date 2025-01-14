// резать строку
  rCutStr = str.substring(str.length-4, str.length);
//дубликаты
  const r0 = [];// масив с ел items но без дубликатов
  const r1 = [];// масив с ел items которые is дубликаты
  const r2 = [];// масив с дубликатами по distinct
  for (const i of items) r0.includes(i) ? r1.push(i) : r0.push(i);
  for (const i of r1) !r2.includes(i) ? r2.push(i) : 0;
  return r2;
