
# Chapter 4
# Example 4.13 page no. 124
# Covariance of 2 Random Variables..


# to find the covariance between two variables X and Y

a <- matrix(c(3/28,3/14,1/28,9/28,3/14,0,3/28,0,0),nrow = 3)

# individual column sum
ax <- apply(a,2,sum)

# indivdual row sum
ay <- apply(a,1,sum)

# E[X]..

ex <- sum(0:2*ax)

# E[Y]..

ey <- sum(0:2*ay)

# given E[XY]=3/14

# using covariance formula 
# E[XY]-E[X]*E[Y]

covar <- 3/14-ex*ey

cat("The covariance between the random variable X and Y is",covar)

