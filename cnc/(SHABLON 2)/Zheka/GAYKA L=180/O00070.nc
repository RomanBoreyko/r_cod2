%
O00070 (FASKA 6x45)
G00 G17 G40 G49 G80 G90

G52 X [ 0. ] Y [ 5. ] Z [ 0. ] 

T3 D03 M06
G43 H03 Z100. 
S3500 M03

#7= 3000. (PODA4A mm.) 

#10= 70. (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -6. (KONEZ) 
#3= 0.25 (SHAG) 
#4= 25. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 
G00 Z5. F3000. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#20= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y [ #10 / 2. - #4 -10. ] 
G01 Z#1 
G01 X0. Y#20 F#7 
G03 I [ 0. ] J [ - #20 ] 
G01 X0. Y [ #10 / 2. - #4 -10. ] 

END1 

G00 X0. Y0. 

G00 Z100. 
G52 X0. Y0. Z0. 
M99 



%