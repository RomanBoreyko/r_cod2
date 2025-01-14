%
O00045 (FASKA x45 D10x90)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -55. - 90. ] Y [ -14.9 - 39. ] Z [ -2. ] 

T16 D16 M06
G43 H16 Z150. 
S4000 M03

#7= 1000. (PODA4A mm.) 

#20= 33. (D OTV) 
#21= 0.2 (FASKA x45) 

#10= #20 + [ #21 * 2. ] - 0. (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -1. (KONEZ) 
#3= 1. (SHAG) 
#4= 4. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 
G00 Z10. F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#25= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G00 Z#1 
G01 X0. Y#25 
G03 I [ 0. ] J [ - #25 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 


%