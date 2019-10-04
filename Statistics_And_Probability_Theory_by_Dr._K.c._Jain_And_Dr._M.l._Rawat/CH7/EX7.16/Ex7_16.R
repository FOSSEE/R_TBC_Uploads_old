#Example 16 chapter 7 page no 323
l=12    #arrival rate customers per hour
c=2
u1=60/6    #service rate customers per hour
rho=l/(u1*c)
P0=1/(1+  l/u1  + (((l/u1)^2)/2)*c*u1/(c*u1-l) )
print(P0)
P_C=P0*((l/u1)^2)*2*u1/(2*(2*u1-l))
cat("prob customer has to wait",P_C)
Em=P0*((l/u1)^2)*l*u1/((2*u1-l)^2)
cat("avg queue length",Em)
En=(Em+l/u1)
cat("avg customers in the system",round(En,0))
Ev=En/l
cat("avg time spent in the system in minutes",Ev*60)
