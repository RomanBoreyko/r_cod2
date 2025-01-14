function countSheeps(arrayOfSheep) {
  let r0 = 0;
  for (let i = 0; i < arrayOfSheep.length; i++) {// why .length without -1 ?
    if (arrayOfSheep[i] === true) {
      r0 += 1;
    }
  }
    return r0;
}