%
O00010 (SV M97)
G00 G17 G40 G49 G80 G90
G54 

#33= 17. ( NOMER INSTRUMENTA) 

T #33 D #33 M06 
G43 H #33 Z150. 

S3000. M03 

(******************************) 
G52 X [ 0. ] Y [ 0. ] Z [ 0 ] 
M97 P15 
(******************************) 

G00 Z200. 

G52 X0. Y0. Z0. 

G53 Y0. 

M30 

N15 M03 

(******************************) 
#11= 1. (NA4ALO SVERLENIJA) 
#12= -1. (KONEZ ZASVERLOVKA) 
#13= 0.04 (PODA4A G95) 
#14= 5000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -18. (KONEZ) 
#3= 1. (SHAG) 
#4= 0.25 (NEDOEZD V CIKLE) 
#5= 0. (KOORDINATA OTSKOKA) 
(******************************) 

G00 X0. Y0 M08 
G01 Z#11 G94 F#14 
G01 Z#12 G95 F#13 
G01 Z#5 G94 F#14 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0 Y0 M08 
G01 Z [ #1 + #3 + #4 ] G94 F#14 
G01 Z [ #1 ] G95 F#13 
G01 Z#5 G94 F#14 
END1 

G69 G94 
G01 Z2. F3000. 
G00 Z50. 
M99 




%