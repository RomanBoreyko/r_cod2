%
O00091 (E-GRAV KFSF) 
G00 G17 G40 G49 G50 G69 G80 G90
G54 
G52 X0. Y0. Z [ -24. ] 

T1 D01 M06
G43 H01 Z100. 
S7500 M03


#11= -8.25 (X) 
#12= 20. (Y) 
#13= 4. (J) 

G101 X0 

G00 Z50. 

#1= 0. (NA4ALO) 
#2= -0.4 (KONEZ) 
#3= 0.1 (SHAG) 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
G00 X#11 Y#12 
G47 E20. F40. I0. J#13 P0 R1. Z#1 (KFSF)
END1 
G00 Z100. M09 
G100 X0 Y0 Z0 
G52 X0. Y0. Z0. 
M30 



N25 
G00 X0. Y0. 
G00 X0. Y [ - 35.5 / 2 ] 
G03 I0. J [ + 35.5 / 2 ] F1. 
G00 X0. Y0. 

#7= 500. (PODA4A) 

G68 X0 Y0 R-30. 

#1= 20. (NA4ALO) 
#2= 10. (KONEZ) 
#3= 10. (SHAG) 
#4= 0. (D-INSTRUM.) 
#6= 19.5 (S-KLY4A) 
#5= 1.25 (OFFN) 
#8= 38. (DIAM.ZAGOTOV.) 

(PERES4ET) 
#10= #6 / 2 + #5 (POL-KLY4A, OFFN) 
#11= #10 * TAN[ 30. ] (POL-STORONI) 
#12= #11 * 2 (1/2 DIAGON.) 

G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0 Y [ #8 / 2 + #4 / 2 + 10. ] 
G01 Z#1 
G01 X0 Y [ #12 ] G41 
G01 X [ #10 ] Y [ #11 ] 
G01 Y [ - #11 ] 
G01 X0 Y [ - #12 ] 
G01 X [ - #10 ] Y [ - #11 ] 
G01 Y [ #11 ] 
G01 X0 Y [ #12 ] 
G01 X0 Y [ #8 / 2 + #4 / 2 + 10. ] G40 

END1 
G00 Z100. M09 
G69 
M99



%