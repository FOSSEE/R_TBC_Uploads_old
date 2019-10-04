# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.12 on Pg. 252
# Probability of the Number of Typographical Errors in Textbooks 


# Given the number of errors per 100 pages follows Poisson (1.5) 

# P(there are no typographical errors in a sample of 100 pages) is given as:

v <- dpois(0, 1.5)

cat("P(there are no typographical errors in a sample of 100 pages) =", v )

#Answer: 0.22313

#End