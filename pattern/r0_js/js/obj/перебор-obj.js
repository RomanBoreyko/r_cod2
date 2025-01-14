for (const key of object) {
  if (object.hasOwnProperty(key)) {
    const thirdElement = object[key][2];

const obj = {};
const values = Object.values(obj);
const value = values[0]; // или сразу Object.values(obj)[0]
if (value)const thirdElement = value[2]

const data = {
  'hello': 42,
  'world': 100,
  'foo': 'bar',
};

const keys = Object.keys(data);
console.log(...keys); // -> hello world foo
console.log(keys[1]); // -> world

// также через for ... in можно перебрать перечислимые свойства
for (let key in data) {
  console.log(key, data[key]); // -> hello 42
                               // -> world 100
                               // -> foo bar
}

Также можно сделать Object.keys(data).forEach(...) или Object.keys(data)[2]
Также см. Object.entries() который возвращает массивы, где содержится ключ и его значение.