# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.8a on Pg 290
# Supermarket Checkout Counter 


#a.Find the probability of service is completed in fewer than 5 minutes
#the random variable, service process, X ~ exp(6/hour) i.e., X ~ exp(0.1/minute)
lambda = 0.1 #lambda = 0.1/minute

p = pexp(5, rate=lambda)  

cat("P(X < 5):",p)

#Answer:0.3934693

#End

