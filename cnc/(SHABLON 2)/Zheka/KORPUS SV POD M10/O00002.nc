%
O00002 (D8.5)
G00 G17 G40 G49 G80 G90
G55 
G52 X0. Y0. Z0. 

T3 D03 M06
G43 H03 Z50. 
S700 M03

G00 X [ 70. / 2. ] Y0. 
M97 P5 
/ M01 

G00 X0. Y [ -70. / 2. ] 
M97 P5 
/ M01 

G00 X [ -70. / 2. ] Y0. 
M97 P5 
/ M01 

M03 
G00 X0. Y [ 70. / 2. ] 
M97 P5 

G69 G94 
G00 Z50. M09 
G52 X0. Y0. Z0. 
M99 

N5 G95 
M03 
G00 Z50. 
G00 Z2. M08 
G01 Z-3.5 F0.06 
G01 Z-25.5 F0.15 
G00 Z50. 
M99 



%