
# Chapter 4
# Example 4.11 page no. 122 from the pdf..
# Variance of a new Random variable


# given a random variable find the variance of another random variable

#pdf for X
a <- c(1/4,1/8,1/2,1/8)

# finding variance for 2x+3

# E[(2x+3-6)^2]

varia <- weighted.mean(4*0:3*0:3-12*0:3+9,a)

cat("The variance of g(X)=2X+3 is",varia)
