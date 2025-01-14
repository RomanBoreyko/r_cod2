%
O00003 (VNUTR)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T2 D02 M06
G43 H02 Z100. 
S3000 M03 F1000. 

#1= 0. (NA4ALO) 
#2= -20. (KONEZ) 
#3= 1. (SHAG) 
#4= 10. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 45.5 (S-KLY4A) 
#8= 20. (DIAM.OTV.) 

G68 X0 Y0 R0. 

(PERES4ET) 
#10= #6 / 2 - #5 - #4 (POL-KLY4A, OFFN) 
#11= #10 * TAN[ 30. ] (POL-STORONI) 
#12= #11 * 2 (1/2 DIAGON.) 

G00 X [ 0. ] Y [ #8 / 2. - #4 - 5. ] 
G00 Z10. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ 0. ] Y [ #8 / 2. - #4 - 5. ] 
Z#1 

G01 X0 Y [ #12 ] 
G01 X [ - #10 ] Y [ #11 ] 
G01 Y [ - #11 ] 
G01 X0 Y [ - #12 ] 
G01 X [ #10 ] Y [ - #11 ] 
G01 Y [ #11 ] 
G01 X0 Y [ #12 ] 

G01 X [ 0. ] Y [ #8 / 2. - #4 - 5. ] 

END1 
G00 Z100. M09 
G69 
G52 X0. Y0. Z0. 
M30 



%