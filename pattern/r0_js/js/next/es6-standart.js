const HIGH_TEMPERATURES = {yesterday: 75,today: 77,tomorrow: 80};
// обьявление двух переменных tomorrow,today со свойствами из HIGH_TEMPERATURES
const {tomorrow,today} = HIGH_TEMPERATURES;
// переименование ключа и создание двух переменных со свойствами ключа
const {tomorrow:highTomorrow, today:highToday} = HIGH_TEMPERATURES;
// And here's how you can assign an object properties' values to variables with different names:
const {today: {high:highToday,low:lowToday}} = LOCAL_FORECAST;

//деконструкция обмен
let a=8,b=6;[a,b]=[b,a];

// альтернатива .slice()
"use strict";const source = [1,2,3,4,5,6,7,8,9,10];
function removeFirstTwo(list) {const [a,b, ...arr] = list;return arr;}
const arr = removeFirstTwo(source);

// деструктуризация обж
const stats = {  max: 56.78,  standard_deviation: 4.34,  median: 34.54,  mode: 23.87,  min: -0.75,  average: 35.85};
const half = ({max,min}) => (max + min) / 2.0;

//Object Property Shorthand ({ жесть
const createPerson = (name, age, gender) => ({name, age, gender});
//{name: "Zodiac Hasbro", age: 56, gender: "male"}

// замена
const bicycle = {gear: 2,setGear: function(newGear){this.gear = newGear}};
const bicycle = {gear: 2,setGear(newGear){this.gear = newGear}};

// class Syntax to Define a Constructor Function
class r1{constructor(r3){this.r3=r3}}
const r0 = new r1('r0');