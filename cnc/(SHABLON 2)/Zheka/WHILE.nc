%
O00017 (WHILE)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06 
G43 H05 Z100. 
S1200 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 1. (NA4ALO) 
#2= -20. (KONEZ) 
#3= 1. (SHAG) 
#4= 50.4 / 2 (R INSTR) 
#5= 0. (OFFN) 

#11= 12.5 (RADIUS)

#6= -200. / 2. - #4 - #5. (-X)
#7=  200. / 2. + #4 + #5. (X)
#8= -150. / 2. - #4 - #5. (-Y)
#9=  150. / 2. + #4 + #5. (Y)

G00 X [ #7 - #11 ] Y [ #9 + 10 ] 
G00 Z10. M08 
G01 Z#1 F#10 


WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
 
G00 Z [ #1 ] 

G01 G41 Y [ #9 ] 
G02 X[#7] Y [ #9 - #11 ] R [#11]
G01 Y [ #8 + #11 ] 
G02 X[#7 - #11 ] Y [ #8  ] R [#11]
G01 X[#6 + #11] 
G02 X [#6] Y[#8+#11] R [#11]
G01 Y [#9-#11]
G02 X [#6+#11] Y[#9] R [#11]
G01 X [#7-#11]
G01 G40 X [ #7 - #11 ] Y [ #9 + 5 ]

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 



%