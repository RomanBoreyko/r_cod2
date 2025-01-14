%
O00219 (PROTO4KA FREZ)
G00 G17 G40 G49 G80 G90 
G56 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

#20= 4 (SPINDLE!!!!!!!!!!) 

T17 D17 M06 
G43 H17 Z200. 
S1200 M#20 

#10= 0.1 (Feed) 
#11= 2. (Feed Rapid) 

#1= 0. (NA4ALO) 
#2= -41. (KONEC) 
#3= -50. (BEZOPAS X) 
#5= 0.05 (ZANIJENIE) 

G95 
G00 X [ #3 ] Y [ 0. ] 
G00 Z [ #1 ] 
G01 X [ #5 ] F [ #11 ] 
G01 Z [ #2 ] F [ #10 ] 
G01 X [ #3 ] F [ #11 ] 

G94 
G00 Z200. 
M05 
G52 X0. Y0. Z0. 
M30 


%