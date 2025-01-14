%
O00068 (FASKA DIAM ZA PROHOD )
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T16 D16 M06
G43 H16 Z150. 
S4000 M03

#10= 1000. (PODA4A mm.) 

#1= -45. - 4. (GLUBINA) 
#4= 10. / 2. (R INSTR) 
#5= 55. (D OTV) 
#6= 0. (FASKA) 


G00 X0. Y0. 
G00 Z10. 
G01 Z#1 F#10 
G01 X0. Y [ #5 / 2. - #4 + #6 ] 
G03 I [ 0. ] J [ - #5 / 2. + #4 - #6 ] 
G01 X0. Y0. 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 




%