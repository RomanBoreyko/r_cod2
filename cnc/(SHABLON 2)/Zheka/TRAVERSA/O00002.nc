%
O00002 (RR 580)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06 
G43 H05 Z100. 
S1200 M03 
#10= 1500. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -64. (KONEZ) 
#3= 1. (SHAG) 
#4= 50.45 / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -580. / 2. - #4 - #5 
#8= 580. / 2. + #4 + #5 
#9= 70. / 2. + 25. 
#6= -70. / 2. - 25. 

G00 X [ #7 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2. 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 + #3 ] 
G01 Y [ #6 ] 
G00 Z [ #1 ] 
G01 Y [ #9 ] 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 



%