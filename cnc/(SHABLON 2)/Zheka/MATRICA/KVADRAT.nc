%
O00005 (KVADRAT)
G00 G17 G40 G49 G80 G90 
G56 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T6 D06 M06 
G43 H06 Z150. 
S1000 M03 
#10= 300. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -10. (KONEZ) 
#3= 10. (SHAG) 
#4= 8. / 2 (R INSTR) 
#5= 1.3 (OFFN) 

#6= 8. / 2. + #4 + 5. (OTYEZD) 
#7= 5. / 2. + #5 (RAZMER KVADRATA) 
#8= 0.1 (RADIUS) 

G00 X [ 0. ] Y [ #6 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 X [ 0. ] Y [ #6 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #7 ] F [ #10 / 2. ] 
G01 X [ #7 - #8 ] F#10 
G02 X [ #7 ] Y [ #7 - #8 ] R#8 
G01 Y [ - #7 + #8 ] 
G02 X [ #7 - #8 ] Y [ - #7 ] R#8 
G01 X [ - #7 + #8 ] 
G02 X [ - #7 ] Y [ - #7 + #8 ] R#8 
G01 Y [ #7 - #8 ] 
G02 X [ - #7 + #8 ] Y [ #7 ] R#8 
G01 X [ 0. ] 
G01 G40 Y [ #6 ] 

END1 
G00 Z150. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 


%