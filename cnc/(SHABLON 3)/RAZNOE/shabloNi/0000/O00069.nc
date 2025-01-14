%
O00069 (FASKI OTV PO DIAM)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T16 D16 M06
G43 H16 Z150. 
S3000 M03 
#10= 500. (Feed) 

#1= -90. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 196. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 
M97 P5 L#5 

G69 G94 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M30 

N5 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] Z0. 
M01 
M03 

G00 Z100. 
G00 X0. Y0. 

#11= - 4. (GLUBINA) 
#14= 10. / 2. (R INSTR) 
#15= 19. (D OTV) 
#16= 0. (FASKA) 

G00 Z10. 
G01 Z#11 F3000. 
G01 X0. Y [ #15 / 2. - #14 + #16 ] F#10 
G03 I [ 0. ] J [ - #15 / 2. + #14 - #16 ] 
G01 X0. Y0. 

G00 Z100. M09 
#1= #1 + #3 
M99 




%