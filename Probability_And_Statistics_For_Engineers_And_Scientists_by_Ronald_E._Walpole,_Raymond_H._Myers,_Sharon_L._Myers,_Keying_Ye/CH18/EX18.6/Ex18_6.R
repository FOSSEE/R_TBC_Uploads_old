
# Chapter 18
# example 18.6 page no. 715 from the pdf..
# to find 95% bayesian interval 

# Note - Example 18.5 is theoretical with nothing to compute..

# given prior distribution uniform , for 0<p<1
# refer example 18.2 on page no.712

# from example 18.2 we can see that at x=0 the posterior distribution is 3(1-p)^2
# package "polynom" is used, if not installed can be done using install.packages("polynom")

library(polynom)

a <- polynomial(coef = c(3,-6,3))

b <- polynomial(c(1,-3,3,-1)) - 0.025

c <- integral(a)-0.025

cat("The 95% bayesian interval is",polyroot(c)[1],"and",polyroot(b)[1])



