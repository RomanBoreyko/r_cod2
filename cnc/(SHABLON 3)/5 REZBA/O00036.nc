%
O00036 (MET4IK PO D)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#33= 11 (TOOL NUMBER) 

T#33 D#33 M06 
G43 H#33 Z150. 

(******************************) 
#21= 0. (NA4ALO UGLA) 
#25= 4. (KOLI4ESTVO) 
#27= 150. (DIAMETR RASPOLOGENIJA) 
#23= [ 360. / #25 ] (SHAG UGLA) 
(******************************) 

M97 P5 L#25 
G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 

M30
N5 
M01 

G68 X0. Y0. R#21 
G00 X0. Y [ #27 / 2 ] 

(******************************) 
#1= -27. (GLUBINA REZBI) 
#2= 200. (OBOROTI) 
#3= 5. (BEZOPASNOE RASSTOYANIE) 
#4= 1.75 (SHAG REZBI) 
(******************************) 

S [ #2 ] M03
M08 
G00 Z [ #3 ] 
G84 G98 Z [ #1 ] F [ #2 * #4 ] R [ #3 ] 
G80 Z [ #3 ] M09

G00 Z100. 
G69 G94 
#21= #21 + #23 
M99 


%