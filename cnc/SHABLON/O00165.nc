%
O00165 (REZBA FREZA)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0 / 2. ] Y [ - 182. / 2. ] Z [ 0. ] 

T6 D06 M06
G43 H06 Z150. 
S3000 M03
#7= 300. (PODA4A mm.) 

#21= 10. (D NA4.) 
#22= 12. (D KON.) 
#23= 0.5 (D SHAG) 

WHILE [ #21 LT #22 ] DO2 
#21= #21 + #23 
IF [ #21 GT #22 ] THEN #21= #22 
#10= #21 

#11= -23. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= 2. (KONEZ) 
#3= 1.75 (SHAG REZBI) 
#6= #10 (D-OTV.) 
#4= 9.65 (D-FREZI) 
#5= -0.1 (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z #11 F1500. 

WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] F [ #7 / 3. ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 F [ #7 ] 

END1 
G01 X0. Y0. 
G00 Z10. 
END2 

G00 Z150. M09 
M05 
G52 X0 Y0 Z0 
M30 





%