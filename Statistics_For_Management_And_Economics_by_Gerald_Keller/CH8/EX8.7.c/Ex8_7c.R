# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.7c on Pg 288
# Lifetimes of Alkaline Batteries 


#The lifetime of an alkaline battery is exp(0.05) distributed.
lambda = 0.05

#c. What is the probability that a battery will last for more than 20 hours?

p = 1- pexp(20, rate=lambda)  
cat("P(battery lifetime > 20):",p)

#Answer: 0.3678794

#End


