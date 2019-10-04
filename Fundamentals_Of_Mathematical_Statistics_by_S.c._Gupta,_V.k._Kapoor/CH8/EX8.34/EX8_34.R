#Page number--8.35
#Example number--8.34

n=4000
#Probability of loss of both eyes
p=10/100000
#For poisson distribution
lambda=n*p
a=ppois(3,lambda,lower=FALSE)
sprintf("Probability that more than 3 will collect the policy: %f",a)