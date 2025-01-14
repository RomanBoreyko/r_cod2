%
O00009 (PAZIK BOLT)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T7 D07 M06
G43 H07 Z50. 
S6000 M03
#7= 300. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -18. - 0.5 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 6. / 2. (RINSTR) 
#6= 7. / 2. (SHIRINA Y) 
#8= 55. / 2. (DLINNA X) 
#5= -0.03 (OFFN) 

#10= 1.35 

G00 X [ 0. ] Y [ 0. ] 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ - 33. / 2. + #4 + 3. ] Y0. 
G01 Z#1 
G01 Y [ #6 - #4 - #5 ] 
G01 X [ - #8 + #4 - #10 ] 
G01 Y [ - #6 + #4 + #5 ] 
G01 X [ -33. / 2. + #4 + 3. ] 

END1 

G00 Z50. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 



%