%
O00002 (SV D12.5)
G00 G17 G40 G49 G80 G90
G56 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T10 D10 M06 
G43 H10 Z100. 
S400 M03

#1= 0. (NA4ALO UGLA) 
#5= 6. (KOLI4ESTVO) 
#7= 120. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P5 L#5 

G69 G94 
G00 Z100. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 

N5 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z50. 
G00 Z3. M08 
G01 Z-3. F0.1 
G01 Z-17. F0.2 
G00 Z1. M09 
G00 Z50. 
#1= #1 + #3 
M99



%