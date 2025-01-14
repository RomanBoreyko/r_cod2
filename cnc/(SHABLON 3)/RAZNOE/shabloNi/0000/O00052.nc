%
O00052 (M36 Rezcom)
G00 G17 G40 G49 G80 G90
G54 
G52 X0 Y0 Z0. 

T4 D04 M06
G43 H04 Z100. 

#18= 1800 (S RPM) 
#17= 300. (PODA4A mm.) 
#7= #17 
S#18 M03

#21= 32. (D NA4.) 
#22= 36.2 (D KON.) 
#23= 0.5 (D SHAG) 

WHILE [ #21 LT #22 ] DO2 
#21= #21 + #23 
IF [ #21 GT #22 ] THEN #21= #22 
IF [ #21 EQ #22 ] THEN #7= [ #17 * 0.9 ] S [ #18 * 0.85 ] 
#10= #21 

#11= -88. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= 4. (KONEZ) 
#3= 4. (SHAG) 
#6= #10 (D-OTV.) 
#4= 31.6 (D-FREZI) 
#5= 0.15 (OFFN) 

G00 X0. Y0. 
G00 Z#2 
G01 Z#11 M08 F [ #7 * 10. ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] F#7 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 
END1 
G01 X0. Y0. 
END2 
G00 Z100. M09 

G00 G53 Y0 Z0 X-400. 
G52 X0 Y0 Z0 
M30





%