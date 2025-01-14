%
O00010 (SV D10.2)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#33= 10 ( NOMER INSTRUMENTA) 

T#33 D#33 M06 
G43 H#33 Z150. 

S1800 M03
(******************************) 
#21= 0. (NA4ALO UGLA) 
#25= 4. (KOLI4ESTVO) 
#27= 195. (DIAMETR RASPOLOGENIJA) 
#23= [ 360. / #25 ] (SHAG UGLA) 
(******************************) 
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
(******************************) 
#11= 1. (NA4ALO SVERLENIJA) 
#12= -5. (KONEZ SVERLENIJA) 
#13= 0.1 (PODA4A G95) 
#14= 2000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -24. (KONEZ) 
#3= 1. (SHAG) 
#4= 0.5 (NEDOEZD V CIKLE) 
#5= -3. (KOORDINATA OTSKOKA) 
(******************************) 
M08 
G00 Z100. 
G01 Z#11 G94 F [ #14 * 2. ] 
G01 Z#12 G95 F#13 
G01 Z#5 G94 F#14 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
G01 Z [ #1 + #3 + #4 ] G94 F#14 
G01 Z [ #1 ] G95 F#13 
G01 Z#5 G94 F#14 
END1 
G00 Z100. 
G69 G94 
#21= #21 + #23 
M99 


%