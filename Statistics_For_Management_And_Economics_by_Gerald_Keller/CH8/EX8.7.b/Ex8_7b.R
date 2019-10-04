# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.7b on Pg 288
# Lifetimes of Alkaline Batteries 

#The lifetime of an alkaline battery is exp(0.05) distributed.
lambda = 0.05
#b. Find the probability that a battery will last between 10 and 15 hours. 

p = pexp(15, rate=lambda) - pexp(10, rate=lambda)  
cat("P(10 < battery lifetime < 15):",p)

#Answer: 0.1341641

#End
