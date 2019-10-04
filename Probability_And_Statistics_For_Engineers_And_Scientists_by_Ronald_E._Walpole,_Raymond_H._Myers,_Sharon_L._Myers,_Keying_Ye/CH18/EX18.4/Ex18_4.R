
# Chapter 18
# Example 18.4 page no. 713 from the pdf..
# Posterior Mean and Posterior Mode..

# Note - Example 18.2 and 18.3 are theoretical with nothing to compute..

# given a distribution as on example 18.2 on page no. 712 of pdf
# to find the posterior mean and mode when x=1

# the posterior distribution function for 0<p<1
# package used "polynom"

install.packages("polynom")
library(polynom)

a <- function(x,p){
  
  3*choose(2,x)*(p^x)*((1-p)^(2-x))
  
}

cat("The posterior mean when x=1 is",integrate(function(b){b*a(1,b)},0,1)$value)

a <- polynomial(coef = c(0,6,-6))

b <- deriv(a)

cat("The posterior mode at x=1 occurs at p equal to",Re(polyroot(b)))


