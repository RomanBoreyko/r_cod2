%
O00001 (KFSF)
G00 G17 G40 G49 G50 G69 G80 G90
G54 
G52 X0. Y0. Z0. 

/ G68 X [ 0. ] R [ -90. ] 

T17 D17 M06
G43 H17 Z100. 
S5000. M03

#11= 7. (Y) 
#12= 4. (H) 

#10= -30. (X) 

#15= 26. (DIAM) 

#1= 0. (NA4ALO) 
#2= -0.3 (KONEZ) 
#3= 0.15 (SHAG) 

/ M97 P5 

G00 X0. Y0. 
G00 Z20. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X#10 Y#11 
G47 E20. F300. I0. J#12 P0 R1. Z#1 (VOVA HUY)

END1 
G00 Z100. M09 
G100 X0 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

N5 
G00 X0. Y0. 
G00 X0. Y [ + #15 / 2 ] 
G03 I0. J [ - #15 / 2 ] F1. 
G00 X0. Y0. 
M99 

N15 
G00 X-6. Y9. 
G01 Y-9. F1 
X6. 
Y9. 
X-6. 
G00 X0. Y0. 
M99 


%