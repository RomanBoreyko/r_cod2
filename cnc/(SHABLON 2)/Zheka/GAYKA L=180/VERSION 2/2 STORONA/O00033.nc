%
O00033 (FASKA LEVO)
G00 G17 G40 G49 G80 G90

G52 X [ -75. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06
G43 H05 Z100. 
S1200 M03

#7= 1900. (PODA4A mm.) 

#10= 70. (DIAMETR OTV) 
#1= 0.25 (NA4ALO) 
#2= -6.5 (KONEZ) 
#3= 0.25 (SHAG) 
#4= 50.5 / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 
G00 Z20. 
G01 Z5. F [ #7 * 1.5 ] 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#20= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y#20 F [ #7 * 0.8 ] 
G03 I [ 0. ] J [ - #20 ] F [ #7 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 
G00 Z100. 
G52 X0. Y0. Z0. 
M99 



%