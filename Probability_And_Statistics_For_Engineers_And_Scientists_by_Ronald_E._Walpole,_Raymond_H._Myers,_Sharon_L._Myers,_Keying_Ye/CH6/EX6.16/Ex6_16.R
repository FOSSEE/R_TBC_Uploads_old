
# Chapter 6
# Example 6.16 page no. 192 from the pdf..
# Normal Approximation To the Binomial..

# to find the prob. that sheer guesswork yields from 25 to 30 correct answer for 80 of the 200 
# problem about which student has no knowledge..

# since the sample size is large we can do normal approx.

p <- 0.25    # prob. of guessing a correct answer.

n <- 80

# now using normal approx. mu = p*n and sd <- sqrt(n*p*(1-p))

mu = p*n

sd <- sqrt(n*p*(1-p))


cat("The prob. of correctly guessing from 25 to 30 questions is",pnorm(30.5,mu,sd)-pnorm(24.5,mu,sd))


