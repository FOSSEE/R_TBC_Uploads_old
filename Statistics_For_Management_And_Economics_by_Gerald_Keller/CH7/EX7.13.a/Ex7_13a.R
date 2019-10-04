# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.13a on Pg. 253
# Probability of the Number of Typographical Errors in 400 Pages 


# Given the number of errors per 100 pages follows Poisson (1.5). 
# Probability of the Number of Typographical Errors in 400 Pages. Now, mean is 6 typos per 400 pages.   

# P(there are no typographical errors in a sample of 400 pages) is given as:

v <- dpois(0, 4*1.5)

#Answer: 0.0024788

cat("P(there are no typographical errors in a sample of 400 pages) =", v )

#End 
