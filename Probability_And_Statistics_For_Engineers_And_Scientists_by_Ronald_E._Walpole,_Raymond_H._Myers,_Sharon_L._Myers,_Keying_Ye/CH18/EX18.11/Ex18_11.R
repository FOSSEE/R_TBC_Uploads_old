
# Chapter 18
# Example 18.11 page no. 718 from the pdf..
# to find the bayes estimate for example 18.9, under absolute error loss, when x = 1 is observed..

# Note - Example 18.10 is theoretical with nothing to compute..

# refer example 18.9..
# package used "polynom" if not installed can be installed by executing install.packages("polynom") on console..

library(polynom)

# we see that for for x = 1 the distribution becomes ,
# 6x(1-x)

p <- polynomial(coef = c(0,6,-6))

eq <- integral(p)- 0.5

cat("The bayes estimate under absolute error loss for x = 1 is",Re(polyroot(eq)[1]))
