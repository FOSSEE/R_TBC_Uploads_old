#Page number--8.38
#Example number--8.41

lambda=2
#For poisson distribution
a=dpois(1,lambda)
b=dpois(2,lambda)
sprintf("Required probability: %f",a+b)