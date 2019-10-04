# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.11 on Pg. 249
# Pat Statsdud Has Been Cloned! 

#mean n sd of a class with students like Pat?!

mean.function <- function(n,p)
{
  return(n*p)
}

sd.function <- function(n,p)
{
  return(sqrt(n*p*(1-p)))
}

#mean of binomial i.e., nxp
mean.function(10,0.2)

#variance of binomial i.e., nxpxq
sd.function(10,0.2)

#Answer: mean is 2
#        sd is 1.264911

#End