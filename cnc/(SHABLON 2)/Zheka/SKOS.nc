%
O00006 (SKOS)

G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y0. Z0. 

T6 D06 M06
G43 H06 Z100. 
S1000 M03
#7= 1000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -10.259 (KONEZ) 
#3= 1. (SHAG) 
#6= 150. (SHIRINA DETALI) 
#4= 63. (D INSTR) 
#5= 0. (OFFN) 
#9= 65. (UGOL) 

G00 X0. Y [ #6 / 2 + #4 / 2 + 5. ] 
G00 Z100. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

#10= - TAN[ #9 ] * #1 (-OTEZD) 

G00 Y [ #6 / 2 + #4 / 2 + 5. ] 
G00 X [ #10 ] Z [ #1 ] 
G01 Y [ - #6 / 2 - #4 / 2 - 5. ] 
G00 Z20. 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30



%