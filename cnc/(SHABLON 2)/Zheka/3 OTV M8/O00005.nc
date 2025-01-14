%
O00005 (FASKA D25)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T10 D10 M06
G43 H10 Z10. 
S5000 M03

#7= 1000. (PODA4A mm.) 

#20= 25. (D OTV) 
#21= 0.5 (FASKA x45) 

#10= #20 + [ #21 * 2. ] - 0.7 (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -5. (KONEZ) 
#3= 5. (SHAG) 
#4= 10. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#100= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G00 Z#1 F [ #7 * 2. ] 
G01 X0. Y#100 F [ #7 ] 
G03 I [ 0. ] J [ - #100 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z50. 
G52 X0. Y0. Z0. 
M99 



%