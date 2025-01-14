[[js]] [[js_func]] 
```js
// без арг
() =>

// не сочитаются с конструктором new
callback = callback || (() => {});    // ok
// ~ () => {} ~
// ~ () => ~
// if 1 param can - () ~ => ~
// widaut param need () ~ () => ~
// if return solo in func may kik return ~ $ => $+2 ~
elements.map(({ length }) => length); // [8, 6, 7, 9]
elements.map(element => element.length); // [8, 6, 7, 9]
// ??????????????????
	function Person(){
	  this.age = 0;

	  setInterval(() => {
	    this.age++; // `this` указывает на объект Person
	  }, 1000);
	}
// ??????????????????
	var p = new Person();

// ??????????????? сокращение ифелсь
	let age = prompt("Сколько Вам лет?", 18);

	let welcome = (age < 18) ?
	  () => alert('Привет') :
	  () => alert("Здравствуйте!");

	welcome(); // теперь всё в порядке
// ???????????????
```