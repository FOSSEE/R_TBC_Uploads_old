
# Chapter 6
# Example 6.15 Page no. 191 from the pdf..
# Normal Approximation To the Binomial..

# given- P(patient recovers from disease)=0.4
# to find prob. that less than 30 survive if 100 have prone to this diesease

# since n=100, this binomial variable can be approx. to normal model
p_survive=0.4

mu <- 100*p_survive

sig <- sqrt(100*p_survive*(1-p_survive))

# no. of people are integers, so we need to use approx, and so to obtain prob, we need to find area to the left of 29.5

cat("The probability that fewer than 30 of the 100 patients survive is given by",pnorm(29.5,mu,sig))

