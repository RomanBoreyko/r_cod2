%
O00150 (BONKA  STRO4KA)
G00 G17 G40 G49 G80 G90
G55 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T18 D18 M06
G43 H18 Z150. 
S1000. M03
#7= 1000. (PODA4A mm.) 
#8= 700. (PODA4A VREZ) 

#10= [ 199. - 0.15 ] (DIAMETR BONKI) 

#1= 0 (NA4ALO) 
#2= -2. (KONEZ) 
#3= 2. (SHAG) 
#4= 2. / 2. (R INSTR) 
#5= 0. (OFFN) 
#6= 20. (OTYEZD) 

G00 X [ 0. ] Y [ #10 / 2. + #4 + #6 ] 
G00 Z40. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ 0. ] Y [ #10 / 2. + #4 + #6 ] 
G01 Z [ #1 ] 
G01 X [ 0. ] Y [ #10 / 2. + #4 + #5 ] F#8 
G02 I [ 0. ] J [ - #10 / 2. - #4 - #5 ] F#7 
G01 X [ 0. ] Y [ #10 / 2. + #4 + #6 ] 

END1 

G00 Z200. M09 
G52 X0. Y0. Z0. 
M30 






%