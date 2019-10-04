# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.2 on Pg 272
# Normally Distributed Gasoline Sales 


curve(dnorm(x,mean = 1000,sd=100), -1100, 2000)

#Given  daily demand for regular gasoline at another gas station ~ N(1000,100)
#Given mean=1000, sd=100

#Find P(X <= 1100). Let 'p' denote this required probability

p <- pnorm(1100, mean=1000, sd=100)
#Answer: 0.8413

#End