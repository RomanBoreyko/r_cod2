%
O00003 (FASKI)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T10 D10 M06 
G43 H10 Z100. 
S2000 M03

#1= 60. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 44. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P5 L#5 

G69 G94 
G00 Z10. M09 
G52 X0. Y0. Z0. 
M99 

N5 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z10. 
G00 Z-3. 
G01 Z-3.7 F0.05 
G00 Z-3. 
G00 Z10. 
#1= #1 + #3 
M99



%