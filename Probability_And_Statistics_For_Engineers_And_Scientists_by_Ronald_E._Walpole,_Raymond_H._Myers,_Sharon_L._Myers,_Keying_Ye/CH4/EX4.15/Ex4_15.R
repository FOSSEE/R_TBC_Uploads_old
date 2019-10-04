
# Chapter 4
# Example 4.15 page no. 126 from the pdf..
# Correlation Coefficient Evaluation

# to find the correlation coefficient between two variables x and y..
# Refer Example 4.13 page 124 from the pdf..

a <- matrix(c(3/28,3/14,1/28,9/28,3/14,0,3/28,0,0),nrow = 3)

# individual column sum
ax <- apply(a,2,sum)

# indivdual row sum
ay <- apply(a,1,sum)

# E[X]..

ex <- sum(0:2*ax)

# E[Y]..

ey <- sum(0:2*ay)

# variance(x)..

variax <- sum(0:2*0:2*ax)-ex^2

# variance(y)..

variay <- sum(0:2*0:2*ay)-ey^2

# covariance..

covaria <- 3/14-ex*ey
# correlation coefficient 

corr <- covaria/(sqrt(variax)*sqrt(variay))

cat("The correlation coefficient in this case is", corr)
