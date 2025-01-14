%
O00043 (FASKA STROKOJ BL.) 
G00 G17 G40 G49 G80 G90 
G55 
G52 X [ 0. ] Y [ -60. - 50. / 2 ] Z [ 0. ] 

T5 D05 M06 
G43 H05 Z100. 
S1100 M03 
#7= 1600. (1 PODA4A mm.) 
#5= 1900. (2 PODA4A mm.) 
#6= 2200. (3 PODA4A mm.) 
#4= 2500. (4 PODA4A mm.) 
 
#1= 0.35 (NA4ALO) 
#2= -35.3 (KONEZ) 
#3= 0.35 (SHAG) 
#8= 250. + 60. (DLINA X) 
#9= 48.5 (UGOL otnositelno stola) 
 
G00 Y0. X [ - #8 / 2 ] 
G00 Z [ #1 + 10. ] F#7 
 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 LT -11. ] THEN F#5 
IF [ #1 LT -19. ] THEN F#6 
IF [ #1 LT -24. ] THEN F#4 
#10= [ #1 + #3 ] / TAN[ #9 ] 
#11= #1 / TAN[ #9 ] 

G01 X [ - #8 / 2 ] 
G00 Y#10 Z [ #1 + #3 ] 
G01 X [ #8 / 2 ] 
G00 Y#11 Z#1 
G01 X [ - #8 / 2 ] 
 
END1 
G00 Z100. 
G52 X0. Y0. Z0. 
M99 



%