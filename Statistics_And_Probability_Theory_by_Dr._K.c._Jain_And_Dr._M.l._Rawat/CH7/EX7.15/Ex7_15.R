#Example 15 chapter 7 page no 322
l=10    #arrival rate vehicles per hour
c=2
u1=60/4    #service rate vehicles per hour
rho=l/u1
P0=1/(1+  l/u1  + (((l/u1)^2)/2)*c*u1/(c*u1-l) )
print(P0)
P_C=P0*(rho^2)*2*u1/(2*(2*u1-l))
cat("prob vehicle has to wait",P_C)
busy=l/(u1*c)
cat("prob of the day busy",l/(u1*c))
cat("pumps are idle for percentage = ",100*(1-busy))
