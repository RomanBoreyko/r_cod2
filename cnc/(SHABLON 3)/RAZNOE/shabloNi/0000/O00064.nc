%
O00064 (SPIRAL PO DIAM)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T2 D02 M06 
G43 H02 Z150. 
S2500 M03

#21= 0. (NA4ALO UGLA) 
#25= 6. (KOLI4ESTVO) 
#27= 230. (DIAMETR RASPOLOGENIJA) 
#23= [ 360. / #25 ] (SHAG UGLA) 

M97 P5 L#25 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30

N5 

M01 
M03 

G68 X0. Y0. R#21 
G00 X0. Y [ #27 / 2 ] 

#10= 200. (FEED) 
#1= 10. (D NA4) 
#2= 13.5 (D KON) 
#3= 0.25 (SHAG SPIRALI) 
#4= -27. (KONEC Z) 
#5= -0.05 (OFFN) 

G00 Z [ 10. ] M08 
G01 Z [ #4 ] F [ 1500. ] 
F [ #10 ] 
G13 I [ #1 / 2. ] K [ [ #2 / 2. ] - #5 ] Q#3 Z [ #4 ] 
G00 Z [ 100. ] 

G69 G94 

#21= #21 + #23 
M99 




%