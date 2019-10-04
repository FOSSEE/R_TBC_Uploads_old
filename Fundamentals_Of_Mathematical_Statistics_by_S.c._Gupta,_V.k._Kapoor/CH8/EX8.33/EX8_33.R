#Page number--8.35
#Example number--8.33

#For poisson distribution
#Part (i)
a=dpois(0,1.5)
sprintf("Proportion of days on which neither car is used: %f",a)

#Part (ii)
b=ppois(2,1.5,lower=FALSE)
sprintf("Proportion on which some demand is refused: %f",b)