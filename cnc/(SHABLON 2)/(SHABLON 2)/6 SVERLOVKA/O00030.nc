%
O00030 (SV BEZ OTVODA)
G00 G17 G40 G49 G80 G90
G54 

#33= 7 ( NOMER INSTRUMENTA) 

T#33 D#33 M06 
G43 H#33 Z150. 

S3000. M03 

G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M97 P15 

G00 Z150. M09 
G00 G53 Y0. Z0. 
G52 X0. Y0. Z0. 

M30 

N15 M03 
(******************************) 
#10= 0.1 (FEED 1) 

#3= 3. (BEZOPASNOE RASSTOYANIE) 
#2= -2. (ZASVERLOVKA) 
#1= -10. (GLUBINA SV) 
(******************************) 
G95 
G00 X0. Y0. 
G00 Z#3 M08 
G01 Z#2 F [ #10 / 2. ] 
G01 Z#1 F#10 
G00 Z#3 

G69 G94 
G00 Z100. 
M99 


%