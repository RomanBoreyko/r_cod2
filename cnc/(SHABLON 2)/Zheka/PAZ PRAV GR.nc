%
O00031 (SHPOHPAZ GR)
G00 G17 G40 G49 G80 G90
G57 
G52 X [ 2. + 15. / 2. ] Y [ 0. ] Z [ 0. ] 

T2 D02 M06
G43 H02 Z150. 
S6000 M03
#7= 200. (PODA4A mm.) 

#1= -1. (NA4ALO) 
#2= -3. (KONEZ) 
#3= 0.1 (SHAG) 
#6= 6. (SHIRINA Y) 
#8= [ 13. ] (DLINNA X) 
#5= 0.1 (OFFN) 

#9= [ #8 - #6 ] 
G00 X [ #9 / 2 ] Y0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #9 / 2 ] Y0. 
G01 X [ - #9 / 2 ] Y0. Z#1 
G01 X [ #9 / 2 ] Y0. 
G01 X [ #9 / 2 ] Y [ #6 / 2 - #5 ] G41 
G01 X [ - #9 / 2 ] 
G03 X [ - #9 / 2 ] Y [ - #6 / 2 + #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #9 / 2 ] 
G03 X [ #9 / 2 ] Y [ #6 / 2 - #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #9 / 2 ] Y0. G40 

END1 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 


%