#Page number--9.31
#Example number--9.21
#Load Package-->cubature

library(cubature)

mean=1
variance=4/3
#mean=(a+b)/2=1
#b+a=2
#variance=(b-a)^2/12=4/3
#b-a=4

#Solving two variables equation
x=matrix(c(1,-1,1,1),nrow=2,ncol=2)
y=matrix(c(2,4),nrow=2,ncol=1)
z=solve(x,y)
z

p=1/4   	  	 # -1<x<3

# define the integrated function
f <- function(x){p}
a=adaptIntegrate(f, lowerLimit =-1, upperLimit =0)
a






