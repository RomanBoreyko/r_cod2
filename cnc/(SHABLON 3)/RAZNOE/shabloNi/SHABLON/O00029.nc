%
O00029 (PRYAMOUGOLNOE OTV (KAGDIIJ SHAG OTV BOLSHE))
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ -89. -44. / 2. ] Z [ 0. ] 

T16 D16 M06 
G43 H16 Z150. 
S1500. M03 
#7= 500. (PODA4A mm.) 
#8= 300. 

#1= 5. (NA4ALO    NA STORONU DO RR) 
#2= 0. (KONEZ   = #9...#10) 
#3= 0.3 (SHAG  NA STORONU) 
#5= -0.1 (OFFN) 

#9= 44. / 2. (Y) 
#10= 120. / 2. (X) 
#4= -18. (Z   1 PROHOD) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z #4 F#7 

WHILE [ #2 LT #1 ] DO1 
#1= #1 - #3 
IF [ #2 GT #1 ] THEN #1= #2 

G01 X0. Y0. 
G01 Z #4 
G01 Y [ - #9 + #1 + #5 ] G41 F#8 
G01 X [ #10 - #1 - #5 ] F #7 
G01 Y [ + #9 - #1 - #5 ] 
G01 X [ - #10 + #1 + #5 ] 
G01 Y [ - #9 + #1 + #5 ] 
G01 X0. 
G00 X0. Y0. G40 

END1 
G00 Z200. M09 
G52 X0. Y0. Z0. 
M99 






%