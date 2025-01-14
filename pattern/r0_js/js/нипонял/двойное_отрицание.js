// const all = (arr, fun) => arr.reduce((a,i) => !!fun(i), true);

const all = (arr, fun) => {
  for(const i of arr) {if(!!fun(i)===false)return false};return true;
}