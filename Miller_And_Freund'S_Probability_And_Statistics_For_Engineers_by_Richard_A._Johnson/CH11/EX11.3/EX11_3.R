n = 50 
x = 88.34 
y = 305.58
Sxx = 7239.22
Sxy = 17840.1
Syy = 66976.2
#(a) Find the least squares line for predicting height from width.
beta=Sxy/Sxx
alpha=y-beta*x
cat('height = ',87.88,' + ',2.464,'width')
#(b) Find the least squares line for predicting width from heigh
beta=Sxy/Syy
alpha=88.34 -0.2664*305.58
cat('width  = ',6.944,' + ',0.266,'height')
#(c) Make a scatter plot and show both lines.
Width<-c(77,80,83,73,79,100,93,92,101,87,96,99,94)
Height<-c(290,292,289,284,271,292,308,303,308,315,309,300,305)
plot(Width,Height)
Height=87.88 + 2.464*Width
lines(Width, Height)
Height=-26.11 + 3.759*Width
lines(Width, Height)

