%
O00011 (SEGMENT RR45)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06 
G43 H05 Z100. 
S1200 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 16. (NA4ALO) 
#2= 0.1 (KONEZ) 
#3= 1. (SHAG) 
#4= 50.4 / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -90. / 2. - #4 - 10. 
#8= 90. / 2. + #4 + 10. 
#9= - 10. + #4 - 5. 
#6= 0. 

G00 X [ #7 ] Y [ #9 ] 
G00 Z20. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] F [ #10 ] 
G00 Z [ #1 + 10. ] 

END1 

#1= 1. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 1. (SHAG) 
#4= 50.4 / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -90. / 2. - #4 - 10. 
#8= 90. / 2. + #4 + 10. 
#9= - 10. + #4 - 5. 
#6= 0. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] F [ #10 / 3. ] 
G00 Z [ #1 + 10. ] 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 



%