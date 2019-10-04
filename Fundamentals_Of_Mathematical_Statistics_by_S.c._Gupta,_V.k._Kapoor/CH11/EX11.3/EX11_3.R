#Page number-11.11
#Example number--11.3

kolkata=c(65,2.5)
mumbai=c(67,3.5)
type=c("Average Price","Standard Deviation")
q=data.frame(type,kolkata,mumbai)
q

x=q[1,2]; x
s.dx=q[2,2]; s.dx 			   #Standard deviation of x
y=q[1,3]; y
s.dy=q[2,3]; s.dy				   #Standard deviation of y

slope=0.8*3.5/2.5
intercept=67+0.8*65*3.5/2.5
#From the above, we can get the equation of Y on X
#Equation--->Y=slope*X+intercept

#Calculating the value
Y=67+0.8*3.5/2.5*(70-65)
Y








