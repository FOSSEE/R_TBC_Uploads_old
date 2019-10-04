#Page number--5.27
#Example number--5.24
#LOAD PACKAGE---->ploynom

#Part (i)
integrand=function(x){6*x*(1-x)}
a=integrate(integrand,lower=0,upper=1)
a
sprintf("The function p.d.f")

#Part (ii)
#The expression is 
#0, if x<=0
#(3*x^2-2*x^3), if 0<x<1
#1, if x>1

#Part (iii)
integrand=function(x){6*x*(1-x)}
a1=integrate(integrand,lower=1/3,upper=1/2)
a1
integrand=function(x){6*x*(1-x)}
a2=integrate(integrand,lower=1/3,upper=2/3)
a2
#a1=0.2407407    a2=0.4814815
p=0.2407407/0.4814815
p                 #Answer may vary because of rounding off values

#Part (iv)
#integrand=function(x){6*x*(1-x)}
#integrate(integrand,lower=0,upper=k)=integrate(integrand,lower=k,upper=1)
#Solving above integral we get cubic equation----->4k^3-6k^2+1=0
options(digits=16)
library(polynom)
p=polynomial(c(4,-6,0,1))
solve(p)
sprintf("The only admissible value of k=1/2")


