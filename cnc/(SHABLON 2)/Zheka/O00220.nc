%
O00220 (LISKA POD WELLDON)
G00 G17 G40 G49 G80 G90 
G57 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
(X25.5) 

T17 D17 M06 
G43 H17 Z150. 
S2500 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -1.5 (KONEZ) 
#3= 0.25 (SHAG) 
#4= 16. / 2 (R INSTR) 
#5= -2. (OFFN) 

#15= 16. (SHIRINA LISKI) 

#7= - #15 / 2. + #4 + #5 
#8= #15 / 2. - #4 - #5 
#9= #4 + 5. 
#6= -25. - #4 - 5. 

G00 X [ #7 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 X [ #7 ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 Y [ #6 ] 
G01 X [ #8 ] 
G01 Y [ #9 ] 

END1 
G00 Z150. M09 
M05 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 


%