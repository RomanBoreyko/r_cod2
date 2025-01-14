%
O00015 (BONKA)
G00 G17 G40 G49 G80 G90

G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T13 D13 M06
G43 H13 Z150. 

S2500. M03
#7= 5000. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= -27. (KONEZ) 
#3= 0.5 (SHAG) 
#6= 204. (D-BONKI) 
#4= 25. (D-FREZI) 
#5= 0.1 (OFFN) 
#8= 20. (OTHOD DLJA UGLUBLENIJA) 

G00 X0. Y [ #6 / 2 + #4 / 2 + #8 ] 
G00 Z10. 
G01 Z#1 F#7 
M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 + #4 / 2 + #5 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 + #4 / 2 + #5 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 ] 
G01 X0. Y [ #6 / 2 + #4 / 2 + #8 ] 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 




%