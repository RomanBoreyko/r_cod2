%
O00022 (FR OTV PO DIAMETRU)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
T6 D06 M06
G43 H06 Z150. 
S3000 M03 F1000. 

#1= 0. (NA4ALO UGLA) 
#5= 6. (KOLI4ESTVO) 
#7= 54. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 
M97 P5 L#5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 

N5 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] Z0. 
M01 
M03 
G00 Z100. 

#11= -52. (NA4ALO) 
#12= -45. - 30. (KONEZ) 
#13= 0.25 (SHAG) 
#16= 18.2 (D-OTV.) 
#14= 14. (D-FREZI) 
#15= -0.05 (OFFN) 

G00 X0. Y0. 
G00 Z-50. M08 
G01 Z #11 
WHILE [ #11 GT #12 ] DO1 
#11= #11 - #13 
IF [ #11 LT #12 ] THEN #11= #12 
G01 X0. Y [ #16 / 2 - #14 / 2 - #15 ] 
G03 I0. J [ - #16 / 2 + #14 / 2 + #15 ] Z #11 
END1 
G01 X0. Y [ #16 / 2 - #14 / 2 - #15 ] 
G03 I0. J [ - #16 / 2 + #14 / 2 + #15 ] 
G01 X0. Y0. 
G00 Z100. M09 
#1= #1 + #3 
M99 




%