%
O00001 (RR54)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z100. 
S1200 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -0.7 (KONEZ) 
#3= 1. (SHAG) 
#4= 63. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= 0. 
#8= 250. 
#9= 0. 

G00 X [ #7 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 10. ] 

END1 
G00 Z100. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 



%