%
O00010 (PAZ GRUBO)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T15 D15 M06 
G43 H15 Z50. 
S3500 M03 
#10= 3000. (PODA4A mm.) 
 
#1= 0.25 (NA4ALO) 
#2= -8. + 0.05 (KONEZ) 
#3= 0.25 (SHAG) 
#4= 16. / 2 (R INSTR) 
#5= 0.1 (OFFN) 

#6= 30. (D VREZANIYA) 

G00 X [ 0. ] Y [ 0. ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 ] 
G03 I0. J [ - #6 / 2 + #4 ] Z#1 

G01 X [ -100. / 2. + #4 + 10. ] 
G01 Y [ - #6 / 2. + #4 ] 
G01 X [ 100. / 2. - #4 - 10. ] 
G01 Y [ #6 / 2. - #4 ] 
G01 X [ 0. ] 

G01 G41 Y [ 50. / 2. - #5 ] 
G01 X [ -100. / 2. + 10. ] 
G03 X [ -100. / 2. + #5 ] Y [ 50. / 2. - 10. ] R [ 10. - #5 ] 
G01 Y [ -50. / 2. + 10. ] 
G03 X [ -100. / 2. + 10. ] Y [ -50. / 2. + #5 ] R [ 10. - #5 ] 
G01 X [ 100. / 2. - 10. ] 
G03 X [ 100. / 2. - #5 ] Y [ -50. / 2. + 10. ] R [ 10. - #5 ] 
G01 Y [ 50. / 2. - 10. ] 
G03 X [ 100. / 2. - 10. ] Y [ 50. / 2. - #5 ] R [ 10. - #5 ] 
G01 X [ 0. ] 
G01 G40 Y [ #6 / 2 - #4 ] 

END1 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 



%