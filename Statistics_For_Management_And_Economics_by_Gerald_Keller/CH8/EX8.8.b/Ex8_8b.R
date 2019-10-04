# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.8b on Pg 290
# Supermarket Checkout Counter 


#b.Find the probability of customer leaving checkout counter more than 10 minutes after arriving 

#the random variable, service process, X ~ exp(6/hour) i.e., X ~ exp(0.1/minute)
lambda = 0.1 #lambda = 0.1/minute

p = 1 - pexp(10, rate=lambda)  #P(X > 10) = 1 - P(X < 10)

cat("P(X > 10):",p)

#Answer:0.367879

#End

