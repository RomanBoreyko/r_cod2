%
O00050 (REZBA REZB-FREZA)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#33= 11 ( NOMER INSTRUMENTA) 

T#33 D#33 M06 
G43 H#33 Z150. 

(************************) 
S3500. M03
#7= 200. (PODA4A mm.) 

#21= 14. (D NA4.) 
#22= 16. (D KON.) 
#23= 0.5 (D SHAG) 
(************************) 
WHILE [ #21 LT #22 ] DO2 
#21= #21 + #23 
IF [ #21 GT #22 ] THEN #21= #22 
#10= #21 
(******************************) 
#11= 1. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= -23. (KONEZ) 
#3= 2. (SHAG REZBI) 
#6= #10 (D-OTV.) 
#4= 13.638 (D-FREZI) 
#5= -0.1 (OFFN) 
(******************************) 

G00 X0. Y0. 
G00 Z #11 M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G02 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 
END1 
G01 X0. Y0. 
G00 Z #11 
END2 

G00 Z150. M09 
M05 
G52 X0 Y0 Z0 
M30 


%