%
O00040 (SHPONPAZ VREZ [Y])
G00 G17 G40 G49 G80 G90

G54 
G52 X [ 0. ] Y [ 0. ] Z [ 10. ] 

#33= 11 ( NOMER INSTRUMENTA) 

T#33 D#33 M06 
G43 H#33 Z150. 

S5000. M03 
#7= 2000. (PODA4A mm.) 

(******************************) 
#1= 1. (NA4ALO) 
#2= -10. (KONEZ) 
#3= 0.25 (SHAG) 
#6= 22. (SHIRINA Y) 
#8= [ 90. ] (DLINNA X) 
#5= 0.1 (OFFN) 

#9= [ #8 - #6 ] 
(******************************) 

G00 X0. Y [ - #9 / 2 ] 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ - #9 / 2 ] 
G01 X0. Y [ #9 / 2 ] Z#1 
G01 Y [ - #9 / 2 ] 
G01 X [ #6 / 2 - #5 ] G41 
G01 Y [ #9 / 2 ] 
G03 X [ - #6 / 2 + #5 ] Y [ #9 / 2. ] R [ #6 / 2 - #5 ] 
G01 Y [ - #9 / 2 ] 
G03 X [ #6 / 2 - #5 ] Y [ - #9 / 2. ] R [ #6 / 2 - #5 ] 
G01 X [ 0. ] Y [ - #9 / 2. ] G40 

END1 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 




%