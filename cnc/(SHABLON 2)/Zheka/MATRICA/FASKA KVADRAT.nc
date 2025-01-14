%
O00006 (FASKA KVADRAT)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T1 D01 M06
G43 H01 Z150. 
S4500 M03

#7= 1000. (PODA4A mm.) 

#10= 35. (RAZMER KVADRATA) 

#1= 0. (NA4ALO) 
#2= -4. (KONEZ) 
#3= 0.1 (SHAG) 
#4= 6. / 2 (R INSTR) 
#5= 20. (UGOL) 


G00 X0. Y0. 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#100= - #10 / 2 - [ [ #1 - #2 ] * TAN[ #5 ] ] + #4 

G01 X [ 0. ] Y [ 0. ] 
G01 Z [ #1 ] 
G01 Y [ - #100 ] 
G01 X [ #100 ] 
G01 Y [ #100 ] 
G01 X [ - #100 ] 
G01 Y [ - #100 ] 
G01 X [ 0. ] 
G01 Y [ 0. ] 

END1 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 



%