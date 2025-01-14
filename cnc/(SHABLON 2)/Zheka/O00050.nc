%
O00050 (FASKI PO DIAM T12)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
T16 D16 M06
G43 H16 Z150. 
S3500 M03 F500. 

#30= 300. (FEED) 

#20= 14. (D OTV) 
#21= 1.5 (FASKA x45) 

#1= 0. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 135. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 
M97 P5 L#5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 

N5 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] Z0. 
M01 
M03 
G00 Z50. 

#10= #20 + [ #21 * 2. ] - 1. (DIAMETR OTV) 
#11= 0. (NA4ALO) 
#12= -5. (KONEZ) 
#13= 5. (SHAG) 
#14= 10. / 2 (R INSTR) 
#15= 45. (UGOL) 

G00 X0. Y0. 
G00 Z10. F#7 

WHILE [ #11 GT #12 ] DO1 
#11= #11 - #13 
IF [ #11 LT #12 ] THEN #11= #12 
#100= #10 / 2 + [ [ #11 - #12 ] * TAN[ #15 ] ] - #14 

G01 X0. Y0. 
G01 Z#11 F [ #30 * 5. ] 
G01 X0. Y#100 F [ #30 ] 
G03 I [ 0. ] J [ - #100 ] 
G01 X0. Y0. 

END1 

G01 X0. Y0. 
G00 Z50. M09 
#1= #1 + #3 
M99



%