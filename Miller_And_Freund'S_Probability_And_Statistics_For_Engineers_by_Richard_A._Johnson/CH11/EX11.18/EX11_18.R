#Cinfidence interval for delta normal population 
r=0.70
n=30#number of student
z0.025=1.96
Zbar=1/2*log((1+r)/(1-r))
Zbar
Int1=Zbar-z0.025/sqrt(n)
Int2=Zbar+z0.025/sqrt(n)
message("the interval is: ",Int1 ," and ",Int2)
r1=(exp(1)^Int1-exp(1)^-Int1)/(exp(1)^Int1+exp(1)^-Int1)
r1
r2=(exp(1)^Int2-exp(1)^-Int2)/(exp(1)^Int2+exp(1)^-Int2)
r2
#there for the 95% confidence interval is
message(r1," < rho < ",r2)