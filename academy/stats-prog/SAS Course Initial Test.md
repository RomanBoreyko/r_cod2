SAS Course Initial Test.md 


<!-- Coin task 

площадь 
стола 120 на 80 = 9600
монетка 2 на 2 = 4
const х = 120, у = 80, square_table = 9600, xx = 2, yy = 2, square_coin = 4;

высота
100 этажей
расстояние от стола до потолка height
сколько А помещается в 100 этажах? 100\А
сколько (100/height) помещается на square_table?

-->
```js

'use strict';
debugger;

const х = 120, у = 80, square_table = 9600, 
	xx = 2, yy = 2, square_coin = 4, 
	height = .5;

const stolbiki = 100 / height;
const stolbiki_square = stolbiki * square_coin;
const remaining_space = square_table - stolbiki_square;

if ( remaining_space >= 0)  
{
console.log ("Уместятся");
}

console.log ("не Уместятся");

```

<!-- 
В урне находится 12 белых, 8 красных и 4 чёрных шаров. Наугад извлекается 1 шар, найти вероятность того, что он будет:
а) белым,
б) красным,
в) чёрным.
 -->

```js
const white = 12, red = 8, black = 4, 
total = white + red + black,
rWhite = white / total, 
rRed = red / total, 
rblack = black / total;
```

