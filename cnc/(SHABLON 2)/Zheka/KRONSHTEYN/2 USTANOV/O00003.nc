%
O00003 (FASKA 4x45)
G00 G17 G40 G49 G80 G90
G55 
G52 X [ -38. - 220. ] Y [ 0. ] Z [ 70. - #30 ] 

T16 D16 M06
G43 H16 Z100. 
S2500 M03

#7= 300. (PODA4A mm.) 

#20= 30. (D OTV) 
#21= 4. (FASKA x45) 

#10= #20 + [ #21 * 2. ] - 1. (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -5. (KONEZ) 
#3= 5. (SHAG) 
#4= 10. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. M08 
G00 Z10. F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#100= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G00 Z#1 
G01 X0. Y#100 
G03 I [ 0. ] J [ - #100 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z100. M09 
G52 X0. Y0. Z0. 
M99 



%