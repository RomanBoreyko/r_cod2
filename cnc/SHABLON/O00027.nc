%
O00027 (FASKI STRO4KOI PO X)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -100. / 2 ] Y [ -50. + 10. / 2 ] Z [ -5. ] 

T18 D18 M06 
G43 H18 Z150. 
S1000 M03 
#7= 2000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -8. (KONEZ) 
#3= 0.5 (SHAG) 
#8= 200. + 10. (DLINA X) 
#9= 45. (UGOL otnositelno stola) 
(G101Y0) 

G00 Y0. X [ - #8 / 2 ] 
G00 Z [ #1 + 10. ] M08 F#7 
 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
#10= [ #1 + #3 ] / TAN[ #9 ] 
#11= #1 / TAN[ #9 ] 

G01 X [ - #8 / 2 ] 
G00 Y#10 Z [ #1 + #3 ] 
G01 X [ #8 / 2 ] 
G00 Y#11 Z#1 
G01 X [ - #8 / 2 ] 
 
END1 
(G100) 
G00 Z150. M09 
G00 G53 Y0 
G52 X0. Y0. Z0. 
M30




%