%
O00080 (FASKA INTERP NA D (VNUTRI[STRO4KOI]))
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0 ] Y [ 0. ] Z [ 0. ] 

T15 D15 M06
G43 H15 Z150. 
S3000. M03

#7= 300. (PODA4A mm.) 

#10= 45.5 (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -1. (KONEZ) 
#3= 0.1 (SHAG) 
#4= 16. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y0. 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#20= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y#20 
G03 I [ 0. ] J [ - #20 ] 
G01 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z150. M09 
M05 

G00 G53 Y0 
G52 X0. Y0. Z0. 
M30 




%