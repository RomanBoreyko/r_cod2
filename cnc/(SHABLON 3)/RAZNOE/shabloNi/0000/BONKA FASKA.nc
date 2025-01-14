%
O00016 (BONKA FASKA)
G00 G17 G40 G49 G80 G90
G55 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T12 D12 M06
G43 H12 Z150. 
S2000 M03
#7= 3000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -2.5 (KONEZ) 
#3= 0.05 (SHAG) 
#6= 124. (D-BONKI) 
#4= 44. (D-FREZI) 
#5= 0. (OFFN) 
#8= 10. (OTHOD DLJA UGLUBLENIJA) 
#9= 30. (UGOL) 

G00 X0. Y [ #6 / 2 + #4 / 2 + #8 ] 
G00 Z10. 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

#11= - [ #1 - #2 ] * TAN[ #9 ] 

G01 X [ 0. ] Y [ #6 / 2 + #4 / 2 + #8 ] 
G01 Z [ #1 ] 
G01 X0. Y [ #6 / 2 + #4 / 2 + #5 + #11 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 - #11 ] 
G01 X [ 0. ] Y [ #6 / 2 + #4 / 2 + #8 ] 

END1 

G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M30 




%