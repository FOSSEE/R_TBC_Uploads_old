#Page number--8.37
#Example number--8.37

lambda=390/520
lambda
#For poisson distribution
a=dpois(0,lambda)
sprintf("Sample of 5 pages with no error: %f",a^5)