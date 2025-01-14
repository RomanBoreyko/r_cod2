%
O00001 (xxxxx)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T12 D12 M06
G43 H12 Z150. 
S2800 M03
#7= 700. (PODA4A mm.) 

#1= 0. (NA4ALO   G52 Z-25.  #1=0) 
#2= -25. (KONEZ  #2=-10.) 
#3= 0.5 (SHAG   0.1) 
#6= 38. (D-OTV.   38.) 
#8= 12. -0.2 (DLINNA PRJAMOGO U4ASTKA   12.) 
#9= 0. (POLOVINA UGLA KONUSNOJ 4ASTI     34.9) 
#11= 0. (POLOVINA UGLA UKLONA PLOSKOSTI   5.7) 

G00 X0. Y0. F#7 
G00 Z10. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#10= #1 * TAN[ #9 ] 
#12= #1 * TAN[ #11 ] 

G01 X0. Y0. 
G01 Z#1 
G01 X [ #8 / 2 + #10 - #12 ] Y [ #6 / 2 + #12 ] G41 
G01 X [ - #8 / 2 - #10 + #12 ] 
G03 X [ - #8 / 2 - #10 + #12 ] Y [ - #6 / 2 - #12 ] R [ #6 / 2 + #12 ] F [ #7 * 1.5 ] 
G01 X [ #8 / 2 + #10 - #12 ] F#7 
G03 X [ #8 / 2 + #10 - #12 ] Y [ #6 / 2 + #12 ] R [ #6 / 2 + #12 ] F [ #7 * 1.5 ] 
G01 X0. Y0. G40 F#7 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30



%