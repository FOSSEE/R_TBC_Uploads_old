# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.6 on Pg 283
# Determining the Reorder Point 

mu = 200
sd = 50
Z_0.05 = qnorm(0.95)

reorderpoint = sd*Z_0.05 + mu
#Answer: 282.2427

#End

