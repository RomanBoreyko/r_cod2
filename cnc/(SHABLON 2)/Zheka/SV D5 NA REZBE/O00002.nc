%
O00002 (FR POD SV)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 22. + 130. ] Y [ 0. ] Z [ 0. ] 

T2 D02 M06
G43 H02 Z100. 
S5000 M03

#10= 0.02 (FEED 1) 

#3= 3. (BEZOPASNOE RASSTOYANIE) 
#1= -8. (GLUBINA) 

G95 

G00 X0. Y0. 
G00 Z#3 
G01 Z#1 F#10 
G00 Z#3 

G69 G94 
G00 Z100. 
G52 X0. Y0. Z0. 
M99 



%