%
O00023 (RADIUS VHUTR STRO4KOI VDOL X)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -267. / 2 ] Y [ 128. ] Z [ - 98. - 0.2 + 4. ] 

T4 D04 M06 
G43 H04 Z150. 
S900. M03 
#7= 1400. (PODA4A mm.) 
 
#1= 0. (NA4ALO UGLA) 
#2= 90. (KONEZ UGLA) 
#3= 1. (SHAG UGLA) 
#4= 63. (D-fr.) 
#5= 0.8 (r PLASTINI) 
#6= 4. (R OBRABOTKI) 
#8= 267. (DLINA X) 
 
G00 X [ - #8 / 2 - #4 / 2 - 10. ] Y [ #8 / 2 ] 
G00 Z [ 30. ] M08 F#7 
 
#9= [ #6 - #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 * 2 
IF [ #1 GT #2 ] THEN #1= #2 
#20= [ - SIN[ #1 - #3 ] * #9 - #5 ] (Z) 
#21= [ #6 - COS[ #1 - #3 ] * #9 - #5 ] (X) 
#10= [ - SIN[ #1 ] * #9 - #5 ] (Z) 
#11= [ #6 - COS[ #1 ] * #9 - #5 ] (X) 

G01 Y [ #21 + #4 / 2 ] Z#20 
G01 X [ - #8 / 2 - #4 / 2 ] 
G01 Y [ #11 + #4 / 2 ] Z#10 
G01 X [ #8 / 2 + #4 / 2 ] 
 
END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%