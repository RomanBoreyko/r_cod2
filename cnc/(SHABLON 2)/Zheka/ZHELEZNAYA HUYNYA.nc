%
O00003 (ZHELEZNAYA HUYNYA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 55. / 2. ] Y [ 0. ] Z [ 0. ] 

T18 D18 M06 
G43 H18 Z150. 
S3000 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0.5 (NA4ALO) 
#2= -5. (KONEZ) 
#3= 0.25 (SHAG) 
#4= 20. / 2 (R INSTR) 
#5= 0. (OFFN) 

#6= 0. 
#7= 0. 
#8= #4 + 5. 
#9= -45. + #4 

G00 X [ #6 ] Y [ #8 ] 
G00 Z10. 
G01 Z#1 F3000. 


WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #6 ] Y [ #8 ] 
G00 Z [ #1 ] 
G01 Y [ #9 ] F [ #10 ] 
G01 Z [ 10. ] 

END1 
G00 Z150. M09 

G52 X0. Y0. Z0. 
M30 



%