%
O00042 (RAST BLOK)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#20= 800 (Spindle) 
#10= 0.1 (Feed) 
#1= -22. (Glubina) 

T14 D14 M06
G43 H14 Z150. 
M19 P40. 
G95 

G00 X0. Y0. 
G00 Z10. 
S#20 M03
G00 X0. Y0. Z1. M08 
G01 Z [ #1 ] F [ #10 ] 
M09 
M05 
G04 P1.1 
M19 P40. 
G04 P1.1 
G103 P1. 
G00 X0. Y-0.5 
G00 Z10. 
G103 P0. 
G00 Z200. X0. Y0. 
G69 G94 

G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 





%