%
O00045 (PAZ NA BONKE S OTV)
G00 G17 G40 G49 G80 G90
G55 
G52 X [ 0 ] Y [ 0 ] Z [ 0 ] 

T16 D16 M06
G43 H16 Z100. 
S2200. 
#7= 350. (PODA4A mm.   V CIKLE EST MNOGITELI) 

#1= 0. (NA4ALO) 
#2= -11. (KONEZ) 
#3= 0.5 (SHAG 0..5) 
#4= 10. (D-FREZI) 
#5= -0.05 (OFFN-0.05) 
#6= 20. (SHIRINA PAZA) 
#8= 60. (D NARUG Y) 
#9= 40. (D VNUTR Y) 
#10= 5. (BEZOP RASTOYANIE) 

/ G68 X0. Y0. R0. 

G00 X0. Y [ #8 / 2 + #4 / 2 + #10 ] 
G00 Z25. M03 F#7 
M05 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - #6 / 2 + #4 / 2 + #5 ] Y [ #8 / 2 + #4 / 2 + #10 ] 
G00 Z [ #1 ] 
G01 Y [ #9 / 2 - #4 / 2 - #10 / 2. ] F [ #7 * 1. ] 
G00 Y [ - #9 / 2. + #4 / 2. + #10 / 2. ] 
G01 Y [ - #8 / 2 - #4 / 2 - #10 ] 
G00 X [ #6 / 2 - #4 / 2 - #5 ] 
G01 Y [ - #9 / 2 + #4 / 2 + #10 / 2. ] F [ #7 * 1. ] 
G00 Y [ #9 / 2. - #4 / 2. - #10 / 2. ] 
G01 Y [ #8 / 2 + #4 / 2 + #10 ] 

END1 
M05 
G00 Z100. M09 
G52 X0. Y0. Z0. 
G53 Y0 Z0 
M30 





%