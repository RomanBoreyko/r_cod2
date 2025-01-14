%
O00002 (FASKA)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z [ 0. ] 

T3 D03 M06
G43 H03 Z100. 
S3500 M03 
#7= 1500. (PODA4A) 

G68 X0 Y0 R0. 

#1= 0. (NA4ALO) 
#2= -0.5 (KONEZ) 
#3= 0.1 (SHAG) 
#4= 25. (D-INSTRUM.) 
#6= 17.5 (S-KLY4A) 
#9= 0. (OFFN) 
#8= 30. (DIAM.ZAGOTOV.) 

G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z10. F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#5= #9 - #1 
(PERES4ET) 
#10= #6 / 2 + #5 (POL-KLY4A, OFFN) 
#11= #10 * TAN[ 30. ] (POL-STORONI) 
#12= #11 * 2 (1/2 DIAGON.) 

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

G00 G53 Y0. G69 
G52 X0. Y0. Z0. 
#10000= #3020 
M30




%