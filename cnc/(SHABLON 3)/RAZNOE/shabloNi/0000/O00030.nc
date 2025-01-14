%
O00030 (TOR G2)
G00 G17 G40 G49 G80 G90

T10 D10 M06 
G43 H10 Z100. 
S2200 M03 
#7= 1000. (PODA4A mm.) 

#1= 1. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 1. (SHAG) 
#4= 25. / 2. (R-FREZI) 
#5= 68. / 2. + #4 + 5. 
#6= 36. / 2. + #4 - 2. 

G00 X0. Y#5 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0. Y#5 
G00 Z#1 
G01 X0. Y [ #6 ] 
G02 I0. J [ - #6 ] 
G00 Z [ #1 + 10. ] 

END1 

G00 Z100. M09 
M30 





%