%
O00003 (M10)
G00 G17 G40 G49 G80 G90
G54 

T2 D02 M06 
G43 H02 Z100. 

G52 X [ 175. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ - 175. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 

G00 Z100. 
G52 X0. Y0. Z0. 
M99 

N15 

G00 X0. Y0.
S200 M03
G00 Z10. M08 
G84 G98 Z-14. F300. R10.
G80 Z10. M09

G69 G94 
G00 Z50. 
M99 



%