%
O00020 (MNOGOUGOLNIK)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#33= 14 (TOOL NUMBER) 

T#33 D#33 M06 
G43 H#33 Z150. 

(******************************) 
S [ 1200. ] M03 
F [ 1000. ] 

#1= 0.5 (NA4ALO) 
#2= -12. (KONEZ) 
#3= 0.5 (SHAG) 

#10= 8. (SKOLKI UGOLNIK) 
#11= 50. (RAD. OPISANNOY OKR.) 
#12= 0. (NA4ALNIY UGOL) 
#17= 50. (D-FR.) 
#16= 360. / #10 (UGOL SHAGA) 
#18= #11 * 2 + #17 (ZAHOD NA KORR. X) 
#19= #11 (ZAHOD NA KORR. Y) 
(******************************) 

G00 X#18 Y#19 
G00 Z [ #1 + 10. ] M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 Z#1 

WHILE [ #12 LE 360. ] DO2 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

#14= [ #11 + #17 / 2 ] * COS[ #12 ] 
#15= [ #11 + #17 / 2 ] * SIN[ #12 ] 

G01 X#14 Y#15 G41 
#12= #12 + #16 

END2 
G01 X#18 Y#19 G40 
#12= 0. 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 


%