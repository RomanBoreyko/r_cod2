%
O00004 (FASKA DIAMETR) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T11 D11 M06
G43 H11 Z150. 
S3000 M03

#7= 250. (PODA4A mm.) 

#10= 14. (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -2. (KONEZ FASKA) 
#3= 0.5 (SHAG) 
#4= 10. / 2 (R INSTR) 
#5= 45. (UGOL) 
#6= 0. (OFFN) 

G00 X [ 0. ] Y [ 0. ] 
G00 Z10. F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#20= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X [ 0. ] Y [ 0. ] 
G01 Z#1 
G01 X [ 0. ] Y [ #20 - #6 ] 
G03 I [ 0. ] J [ - #20 + #6 ] 
G01 X [ 0. ] Y [ 0. ] 

END1 

G00 X0. Y0. 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 




%