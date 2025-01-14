%
O00001 (TOREC)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T6 D06 M06 
G43 H06 Z50. 
S350 M03 
#10= 200. (PODA4A mm.) 
 
#1= 3. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 1.5 (SHAG) 
#4= 63. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= 30. / 2. + #4 + 5. 
#8= -30. / 2 + #4 -5. 

G00 X [ 0. ] Y [ #7 ] 
G00 Z10. M08 
G00 Z#1 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ 0. ] Y [ #7 ] 
G00 Z [ #1 ] 
G01 Y [ #8 ] F#10 
G00 Z [ #1 + 10. ] 

END1 
G00 Z50. M09 
G52 X0. Y0. Z0. 
M99 



%