%
O00022 (3 OTV+POTAY SHESTERNYA)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 Z0. 

T16 D16 M06
G43 H16 Z100. 
S3000 M03 

#1= 0. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 44. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P50 L#5 
G69 G94 
G00 Z100. M09 

T10 D10 M06
G43 H10 Z100. 
S800 M03 

#1= 0. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 44. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P55 L#5 
G69 G94 
G00 Z100. M09 

T2 D02 M06
G43 H02 Z100. 
S4500 M03 F500. 

M97 P5 L#5 

T16 D16 M06
G43 H16 Z100. 
S3000 M03 F500. 

M97 P15 L#5 

G69 G94 
G00 Z100. M09 
G53 G00 Y0 
G52 X0. Y0. Z0. 
#10000= #3020 
#10001= #3012 
#10003= #10003 + #10002 
M30

N5 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] 
M01 
M03 
G00 Z20. 
#11= 0.5 (NA4ALO) 
#12= -9. (KONEZ) 
#13= 0.5 (SHAG) 
#16= 13. (D-OTV.) 
#14= 8. (D-FREZI) 
#15= -0.15 (OFFN) 

G00 X0. Y0. 
G00 Z1. M08 
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
G00 Z20. M09 
#1= #1 + #3 
M99 

N15 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] 
M01 
M03 
G00 Z20. 
#11= 0. (NA4ALO) 
#12= -1. (KONEZ) 
#16= 13. (D-OTV.) 
#14= 0. (D-FREZI) 
#15= 0.5 (OFFN) 

G00 X0. Y0. 
G00 Z-9. 
G01 Z [ -9. - 4.5 ] 
G00 Z#11 
G01 Z#12 
G01 X0. Y [ #16 / 2 - #14 / 2 - #15 ] 
G03 I0. J [ - #16 / 2 + #14 / 2 + #15 ] 
G01 X0. Y0. 
G00 Z20. 
#1= #1 + #3 
M99 

N50 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z20. 
G00 Z2. 
G01 Z-1. F0.05 
G00 Z2. 
G00 Z20. 
#1= #1 + #3 
M99

N55 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z20. 
G00 Z2. M08 
G01 Z-2 F0.06 
G01 Z-28. F0.14 
G01 Z-32. F0.22 
G00 Z2. 
G00 Z20. 
#1= #1 + #3 
M99 



%