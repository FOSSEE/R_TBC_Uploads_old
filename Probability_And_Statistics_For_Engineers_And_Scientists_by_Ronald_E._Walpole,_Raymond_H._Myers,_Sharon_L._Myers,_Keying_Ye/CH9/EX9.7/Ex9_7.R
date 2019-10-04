
# Chapter 9
# Example 9.7 page no. 278 from the pdf..
# To find 95% Prediction Interval..

# to find the 95% prediction interval for the loan amount.
# given ..
mu <- 257300

sd <- 25000

n <- 50

c <- sqrt(1+1/n)  

cat("The 95% prediction interval for the future loan amount is",mu-qnorm(0.9750,lower.tail = T)*sd*c,mu+qnorm(0.9750,lower.tail = T)*sd*c)

