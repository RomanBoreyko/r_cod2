%
O00217 (SV ROT)
G00 G17 G40 G49 G80 G90
G54 

#20= -90. + 52.5 (Gradus) 
#21= 100 (R) 

/ G52 X [ SIN[ #20 ] * [ #21 ] ] Y [ COS[ #20 ] * [ #21 ] ] Z0. 

T10 D10 M06
G43 H10 Z100. 
S280 M03

#10= 0.05 (FEED 1) 
#11= 0.1 (FEED 2) 

#3= 2. (BEZOPASNOE RASSTOYANIE) 
#2= -5. (ZASVERLOVKA) 
#1= -20. (GLUBINA SV) 

G95 

G00 X0. Y0. 
G00 Z#3 M08 
G01 Z#2 F#10 
G01 Z#1 F #11 
G00 Z#3 M09 

G69 G94 
G00 Z100. 
G52 X0. Y0. Z0. 
M30 




%