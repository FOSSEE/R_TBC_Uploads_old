# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.13b on Pg. 253
# Probability of the Number of Typographical Errors in 400 Pages 


# Given the number of errors per 100 pages follows Poisson (1.5). 
# Probability of the Number of Typographical Errors in 400 Pages. Now, mean is 6 typos per 400 pages.   

# P(there are five or fewer typos) is given as:

p0 <- dpois(0, 4*1.5)
p1 <- dpois(1, 4*1.5)
p2 <- dpois(2, 4*1.5)
p3 <- dpois(3, 4*1.5)
p4 <- dpois(4, 4*1.5)
p5 <- dpois(5, 4*1.5)

cat("P(X <= 5) = P(0) + P(1) + P(2) + P(3) + P(4) + P(5) =", sum(p0,p1,p2,p3,p4,p5))

#Answer: 0.44568

#End