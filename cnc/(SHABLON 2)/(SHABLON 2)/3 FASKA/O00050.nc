%
O00050 (FAS D8 KONTUR)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 30. + 11.7 ] Z [ 0. ] 

#33= 7 (TOOL NUMBER) 

T#33 D#33 M06 
G43 H#33 Z150. 

S6000 M03 
#10= 3000. (PODA4A mm.) 
 
(******************************) 
#1= -3.5 (NA4ALO) 
#4= 7. / 2. (R INSTR) 
(******************************) 

G00 X [ 54. / 2. + #4 + 10. ] Y [ -11.7 + #4 + 10. ] 
G00 Z#1 

G01 G41 X [ 54. / 2. ] F#10 
G01 Y [ -11.7 - 60. ] 
G01 X [ -54. / 2. + 10. ] 
G02 X [ -54. / 2. ] Y [ -11.7 - 60. + 10. ] R10. 
G01 Y [ -11.7 ] 
G01 X [ -54. / 2. + 9.4 ] 
G03 X [ 54. / 2. - 9.4 ] Y [ -11.7 ] R [ 21.1 ] 
G01 X [ 54. / 2. + #4 + 10. ] 
G01 G40 Y [ -11.7 + #4 + 10. ] 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M99 



%