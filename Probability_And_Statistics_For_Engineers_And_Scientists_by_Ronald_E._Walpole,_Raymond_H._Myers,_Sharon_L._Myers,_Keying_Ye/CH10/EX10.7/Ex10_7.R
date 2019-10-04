
# Chapter 10
# Example 10.7 page no. 351 from the pdf..
# Choice of Sample Size for Testing Mean..

# given the hypothesis test, using alpha= 0.05,  
# to find the sample size if power of our test is to be 0.95 when true mean is 69 kg.
# Null - mu = 68 kg.
# alternative - mu > 68 kg.

mu = 68

mu1 = 69

alpha  = 0.05

sig <- 5

delta <- mu1-mu

z_alpha <- abs(qnorm(0.05))

n <- ((z_alpha+z_alpha)^2)*(sig*sig)/(delta*delta)

cat("The sample size required if the test is to reject the null hypothesis 95% of the time when in fact, mu is as large as 69 kg is",n)

# example 10.8 is bit absurd all they have done is mere division and making conclusions based on that so I an not coding example 10.8

