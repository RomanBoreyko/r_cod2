%
O00002 (4ERVYAK)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G55 
G52 X0. Y0. Z0. 
GOTO1 

N1 (TOREC) 
T6 D06 M06
G43 H06 Z100. 
S900 M03
#7= 1100. (PODA4A mm.) 

#1= 1.5 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 

G00 X0. Y65. 
G00 Z10. M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] THEN F [ #7 / 1.5 ] 

G00 X0. Y65. 
G00 Z#1 
G1 Y0 
G00 Z [ #1 + 10. ] 

END1 

G00 Z100. M09 

M01 

N2 (LISKA) 
T6 D06 M06
G43 H06 Z100. 
S900 M03
#7= 1100. (PODA4A mm.) 
#8= [ 85. ] (DLINA Y) 
#9= [ 21.75 ] (DLINA X) 
#10= 63. (D FREZI) 
#11= 0. (NA4ALO) 
#2= -6. (KONEZ) 
#3= 1. (SHAG) 

#1= #11 
G00 X [ #9 / 2 + #10 / 2 ] Y [ #8 / 2 ] Z20. M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
G00 Y [ #8 / 2 ] 
G00 Z [ #1 + #3 ] 
G01 Y [ - #8 / 2 ] 
G00 Z#1 
IF [ #1 EQ #2 ] THEN F [ #7 / 1.5 ] 
G01 Y [ #8 / 2 ] 
END1 
G00 Z20. M09 
/ M01 
M03 
#1= #11 
G00 X [ - #9 / 2 - #10 / 2 ] Y [ #8 / 2 ] Z20. M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
G00 Y [ #8 / 2 ] 
G00 Z [ #1 + #3 ] 
G01 Y [ - #8 / 2 ] 
G00 Z#1 
IF [ #1 EQ #2 ] THEN F [ #7 / 1.5 ] 
G01 Y [ #8 / 2 ] 
END1 
G00 Z20. M09 
G00 Z100. 

M01 

N3 (SV) 
T16 D16 M06
G43 H16 Z150. 
S4500 M03
G95 

G00 X0. Y0 
G00 Z10. 
G00 Z1.5 
G01 Z-1.5 F0.02 
G00 Z1.5 
G00 Z10. M09 

G69 G94 
G00 Z150. 

/ M01 

T8 D08 M06
G43 H08 Z150. 
S700 M03 
G95 

G00 X0. Y0 
G00 Z10. M08 
G00 Z1. 
G01 Z-40. F0.08 
G00 Z1. 
G00 Z10. M09 

G69 G94 
G00 Z150. 

/ M01 

T16 D16 M06
G43 H16 Z150. 
S3500 M03
G95 

G00 X0. Y0 
G00 Z10. 
G00 Z1.5 
G01 Z-1.5 F0.1 
G01 Z-4.75 F0.02 
G00 Z1.5 
G00 Z10. M09 

G69 G94 
G00 Z150. 

#3006= 1 (Pauza dly produvki otv.) 

N4 (M10x1.5) 
G00 G17 G40 G49 G80 G90
T3 D03 M06
G00 G90 X0. Y0. 
S250 M03
G43 H03 Z5. M08 
G84 G98 Z-20. F375. R5.
G80 Z5. M09
G00 G90 G53 Z0 M05

G69 G94 
G00 G53 Y0 
G52 X0. Y0. Z0. 
#10000= #3020 
M30 



%