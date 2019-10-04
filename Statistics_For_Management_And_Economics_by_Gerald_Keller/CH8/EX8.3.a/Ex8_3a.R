# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.3a on Pg 277
# Probability of a Negative Return on Investment 

#an ROI variable ~ N(10,5)

#Probability of losing money. Denote it by 'p'

p <- pnorm(0, mean=10, sd=5)
cat("The probability of losing money:", p)

#Answer: 0.02275

#End