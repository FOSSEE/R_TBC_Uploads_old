# Statistics for Management and Economics by Gerald Keller
# Chapter 9: Sampling Distributions
# Example 9.1b on Pg 316
# Contents of a 32-Ounce Bottle 


# random variable is amount of soda in each 32-ounce bottle denoted by X. X ~ N(32.2, 0.3)

#Given:
mu = 32.2
sd = 0.3

# what is the probability that the mean amount of the four bottles > 32 ounces. 
# (X_bar > 32). Lets denote by 'p'
# pnorm() gives P(X < x) when X ~ Normal

p = 1 - pnorm(32, mean=32.2, sd=0.3/sqrt(4))
cat("P(X_bar > 32):", p)

#Answer:  0.9087888

#Book's answer slightly different: 0.9082

#End