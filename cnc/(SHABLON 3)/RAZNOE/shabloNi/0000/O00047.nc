%
O00047 (SFERA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 3. ] 

T5 D05 M06 
G43 H05 Z150. 
S1200 M03 
#7= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO UGLA) 
#2= 50. (KONEZ UGLA) 
#3= 1. (SHAG UGLA) 
#4= 50.4 (D-fr.) 
#5= 1. (r PLASTINI) 
#6= 40. (R OBRABOTKI) 
#8= 80. (D OTV) 
 
G00 X [ 0. ] Y [ 0. ] 
G00 Z [ 10. ] M08 F#7 
 
#9= [ #6 - #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 
IF [ #1 GT #2 ] THEN #1= #2 
#10= [ - SIN[ #1 ] * #9 - #5 ] (Z) 
#11= [ #6 - COS[ #1 ] * #9 - #5 ] (X) 

G01 X [ 0. ] Y [ 0. ] 
G00 Z [ #10 ] 
G01 X [ #8 / 2 - #11 - #4 / 2 ] F [ #7 ] 
G03 I [ - #8 / 2 + #11 + #4 / 2. ] J [ 0. ] 
G01 X [ 0. ] Y [ 0. ] F [ #7 * 2. ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30





%