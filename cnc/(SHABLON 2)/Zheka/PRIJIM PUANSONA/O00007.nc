%
O00007 (FASKA 2x45)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T16 D16 M06
G43 H16 Z150. 
S3500 M03

#7= 1000. (PODA4A mm.) 

#20= 50. (D OTV) 
#21= 2. (FASKA x45) 

#10= #20 + [ #21 * 2. ] - 0.7 (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -5. (KONEZ) 
#3= 5. (SHAG) 
#4= 10. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 
G00 Z10. F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#100= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y#100 
G03 I [ 0. ] J [ - #100 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 



%