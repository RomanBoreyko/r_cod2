%
O00004 (M8)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T2 D02 M06
G43 H02 Z100. 

#1= 60. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 44. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P5 L#5 

G69 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M99 

N5 
M00 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] G90 


S500 M03
G00 Z20. 
G00 Z5. M08 
G84 G98 Z-28. F625. R5.
G80 Z5. M09

G00 G90 Z20. M05
#1= #1 + #3 
M99 



%