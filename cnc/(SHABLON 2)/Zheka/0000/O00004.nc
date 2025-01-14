%
O00004 (90gr naruja)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T19 D19 M06 
G43 H19 Z150. 
S3000 M03 
#7= 2000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -42. (KONEZ) 
#3= 0.3 (SHAG) 
#4= 16. (D-FR.) 
#6= 7.6 (Y) 
#8= 660. (DLINA X) 
#9= -45. (UGOL otnositelno stola) 
 
G00 Y0. X [ - #8 - #4 ] 
G00 Z [ #1 + 10. ] F#7 
 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#11= #1 * TAN[ #9 ] 

G01 X [ - #8 - #4 ] 
G00 Y [ #6 / 2 + #11 + #4 / 2 ] Z [ #1 ] 
G01 X [ #4 ] 
G00 Y [ - #6 / 2 - #11 - #4 / 2 ] Z [ #1 ] 
G01 X [ - #8 - #4 ] 
 
END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30



%