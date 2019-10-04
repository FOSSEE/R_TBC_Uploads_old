#95% prediction limit
#from example 7
y=9.938
t0.025=qt(1-0.025,11)
Se=0.180634
n=12
Sxx=236.250
x0=9 
xbar=5.25
Int1=y-t0.025*Se*sqrt(1+1/n+((x0-xbar)/Sxx))
Int2=y+t0.025*Se*sqrt(1+1/n+((x0-xbar)/Sxx))
Int1
Int2
cat("We are 95% confident that the observed value of peak load for this new 
sheet of aluminum lies between 9.51 and 10.37 kN")