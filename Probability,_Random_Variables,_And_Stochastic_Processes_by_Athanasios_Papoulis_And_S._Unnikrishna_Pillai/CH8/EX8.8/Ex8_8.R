#page no. 315
#example 8-8

#functions used
#qnorm():quantile function of the normal distribution:the quantile function maps from probabilities to values in normal distribution 
#ceiling():ceiling(x) rounds to the nearest integer that's larger than x.

rho=0.05
u=0.5
n=100   #samples of x (given)
z=ceiling(qnorm(1-rho/2))       

k=n*u - z*sqrt(n*u*(1-u))              #using the equation (8-26)

k_plus_r=n*u + z*sqrt(n*u*(1-u))       #using the equation (8-26)

print(k)
print(k_plus_r)

cat("thus we can claim with condidence coefficient 0.95 that the median of x is between y40 and y60")