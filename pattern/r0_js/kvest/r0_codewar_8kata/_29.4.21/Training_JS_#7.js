function saleHotdogs(n){
  if (n<5){
    n *= 100;
  } else if (n >= 5 && n<10) {
    n *= 95;
  } else if (n >= 10) {
    n *= 90;
  }
  return n;
}