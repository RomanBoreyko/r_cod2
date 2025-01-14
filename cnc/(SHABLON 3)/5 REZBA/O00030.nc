%
O00030 (MET4IK UNIVERSAL)
G00 G17 G40 G49 G80 G90

G54 
G52 X [ 0. ] Y [ 0. ] Z [ 100. ] 

#33= 11 (TOOL NUMBER) 

T#33 D#33 M06 
G43 H#33 Z150. 

(******************************) 
#1= -28. (GLUBINA REZBI) 
#2= 5. (SKOROST m/min) 
#3= 4. (BEZOPASNOE RASSTOYANIE) 
#4= 2. (SHAG REZBI) 
#5= 16. (DIAMETR REZBI) 

#10= [ [ [ #2 * 1000. ] / 3.14159 ] / #5 ] 
(******************************) 

G00 G90 X [ 0. ] Y [ 0. ] 
S [ #10 ] M03
M08 
G00 Z [ #3 ] 
G84 G98 Z [ #1 ] F [ #10 * #4 ] R [ #3 ] 
G80 Z [ #3 ] M09

G00 Z150. 
G52 X0. Y0. Z0. 
M30 


%