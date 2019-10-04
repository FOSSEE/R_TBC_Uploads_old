# Statistics for Management and Economics by Gerald Keller
# Chapter 8: CONTINUOUS PROBABILITY DISTRIBUTIONS
# Example 8.3b on Pg 277
# Probability of a Negative Return on Investment 


# Find the probability of losing money when the standard deviation is equal to 10%.


p <- pnorm(0, mean=10, sd=10)
cat("The probability of losing money when the standard deviation is equal to 10%:", p)

#Answer: 0.1586553

#End