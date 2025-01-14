%
O00141 (FASKI PO KORDINAT)
G00 G17 G40 G49 G80 G90
G52 X [ 0. ] Y [ 0. ] Z [ 150. ] 
G55 
T15 D15 M06 
G43 H15 Z150. 
S2500. M03 

G52 X [ 0. ] Y [ 71.5 ] Z [ 0 ] 
M97 P15 

G52 X [ -61.921 ] Y [ 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ -61.921 ] Y [ - 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ 0 ] Y [ -71.5 ] Z [ 0 ] 
M97 P15 

G52 X [ 61.921 ] Y [ - 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ 61.921 ] Y [ 35.75 ] Z [ 0 ] 
M97 P15 

M05 
G00 Z150. M09 
G53 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

N15 M03 
#7= 1000. (PODA4A mm.) 
#10= 21. (DIAMETR OTV) 
#1= 0. (NA4ALO) 
#2= -2.5 (KONEZ) 
#3= 0.15 (SHAG) 
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
G00 Z50. 
M99 




%