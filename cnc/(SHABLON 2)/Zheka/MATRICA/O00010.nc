%
O00010 (KONUS 60gr)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ -7.5 - 0.2 ] 

T7 D07 M06
G43 H07 Z100. 
S2500 M03
#7= 2000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -35. (KONEZ) 
#3= 0.15 (SHAG) 
#6= 75. (D-OTV. PRI Z0) 
#5= -0.05 (OFFN) 
#9= 60. (POLNIJ UGOL) 

G00 X0. Y0. 
G00 Z20. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#10= TAN[ #9 / 2 ] * #1 (-OTEZD) 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y [ #6 / 2 - #5 + #10 ] G41 
G03 I0. J [ - #6 / 2 + #5 - #10 ] 
G01 X0. Y0. G40 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30



%