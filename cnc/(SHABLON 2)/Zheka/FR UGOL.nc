%
O00001 (MATRICA) 


G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z-5.5 

T17 D17 M06
G43 H17 Z100. 
S3500 M03
#7= 700. (PODA4A mm.) 

#1= 5.7 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.15 (SHAG) 

G00 X0. Y0. 
G00 Z10. M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#10= #1 / TAN[ 25. ] 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y [ 11. + #10 ] G41 
G01 X [ -11. - #10 ] 
G01 Y [ -11. - #10 ] 
G01 X [ 11. + #10 ] 
G01 Y [ 11. + #10 ] 
G01 X0. 
G01 X0. Y0. G40 

END1 

G00 Z100. M09 
G52 X0. Y0. Z0. 
M30



%