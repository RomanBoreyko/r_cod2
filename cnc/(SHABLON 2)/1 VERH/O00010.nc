%
O00010 (VERH [X])
G00 G17 G40 G49 G80 G90 

G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#33= 4 ( NOMER INSTRUMENTA) 

T#33 D#33 M06 
G43 H#33 Z150. 

S850. M03 
#10= 600. (PODA4A mm.) 

(******************************) 
#1= 2. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 
#4= 63. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -295. / 2. - #4 - 8. (-X) 
#8= 295. / 2. + #4 + 8. (X) 
#9= 0. (Y) 
(******************************) 

G00 X [ #7 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 -30. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 -30. * 2 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 -30. * 3 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 -30. * 4 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

END1 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30 



%