# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.8b on Pg 290
# Supermarket Checkout Counter 


#c.Find the probability of the service being completed in a time between 5 and 8 minutes

#the random variable, service process, X ~ exp(6/hour) i.e., X ~ exp(0.1/minute)
lambda = 0.1 #lambda = 0.1/minute

p = pexp(8, rate=lambda) - pexp(5, rate=lambda)  #P(5 < X < 8) = P(X < 8) - P(X < 5)

cat("P(5 < X < 8):",p)

#Answer: 0.1572017

#End

