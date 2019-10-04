#page no. 305
#example 8-1

#functions used
#qnorm():quantile function of the normal distribution:the quantile function maps from probabilities to values in normal distribution 
#ceiling():ceiling(x) rounds to the nearest integer that's larger than x.


rho=0.05

z0.975=ceiling(qnorm(1-rho/2))

cat("we can expect with confidence coefficient 0.95 that the life expectancy of our battery will be between ",4-(z0.975*0.5),"and ",4+(z0.975*0.5),"years")

