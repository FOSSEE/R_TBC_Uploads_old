#Example 9 chapter 7 page no 309
l =3     # arrival rate per hour
u=60/36      #service rate customers per hour
N=4    # maximum 4 customers in the queue
rho = l/u
p0=(1-rho)/(1-(rho^(N+1)))
cat("Prob of no customer",p0)
En=(rho/(1-rho))*(1 - ((N+1)*(rho^(N+1))*(1-rho)/(1-(rho^(N+1)))))
cat("avg no of customer in the system",round(En,0))
#book has calculation mistake