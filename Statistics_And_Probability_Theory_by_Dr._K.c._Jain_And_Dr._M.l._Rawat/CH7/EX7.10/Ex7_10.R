#Example 9 chapter 7 page no 309
l =6     # arrival rate trains per hour
u=12      #service rate trains per hour
N=3    # maximum 3 in the queue
rho = l/u
p0=(1-rho)/(1-(rho^(N+1)))
cat("Prob of no train",p0)
p1=p0*rho
cat("Prob of 1 train",p0*rho)
p2=p0*rho^2
cat("Prob of 2 train",p0*rho^2)
p3=p0*rho^3
cat("Prob of 3 train",p0*rho^3)
En=p1+(2*p2)+(3*p3)
cat("avg no of train in the system",round(En,0))
ws = En/(u*(1-p0))
cat("avg waiting time in minutes",ws*60)

