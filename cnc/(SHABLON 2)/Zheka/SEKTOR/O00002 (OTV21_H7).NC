%
O00002 (OTV21_H7)
(CO001 03.02.0001)
T02 M06 (D16 SECO LOEX08)
G64 G54
G90 G17 G40 
S1500.0 M03
F1000.0
G43 H02

G52  X-38.50 Y-550.655

(*** OTV_21H7_FREZEROVKA D20H9 ***)

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D01 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END1

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-147.51 Y-531.924

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D02 

WHILE [ #1 GT #2 ] DO2 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END2

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-250.60 Y-491.83

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D03 

WHILE [ #1 GT #2 ] DO3 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END3

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-343.62 Y-431.99

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D04 

WHILE [ #1 GT #2 ] DO4 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END4

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-422.85 Y-354.81

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D05 

WHILE [ #1 GT #2 ] DO5 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END5

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-485.10 Y-263.39

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D06 

WHILE [ #1 GT #2 ] DO6 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END6

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M5

G52 X-527.88 Y-161.38

#1=0.0          (START Z)
#2=-21.0        (END Z)  
#3=0.25         (STEP Z) 
#4=[16.0/2.0]   (R MILL)
#5=0.1          (OFFN)

G00 X0.0 Y0.0 Z250.0
G00 X[-20.0/2.0+#4+#5]
G00 Z50.0
G01 Z1.0

D07 

WHILE [ #1 GT #2 ] DO7 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0 Z#1

END7

G03 X[-20.0/2.0+#4+#5] Y0.0 I[20.0/2.0-#4-#5] J0.0
G01 X0.0

G0 Z250.0

M30


%