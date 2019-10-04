
# Chapter 9
# Example 9.2 page no. 271 from the pdf..
# COnfidence Interval Evaluation..

# to find the confidence interval given mu, sigma

n <- 36

mu <- 2.6

sig <- 0.3

a <- qnorm(0.975)*sig/sqrt(n)

b <- qnorm(0.995)*sig/sqrt(n)

cat("The 95% confidence interval for the above parameters is",mu-a,mu+a,"milliliter")

cat("The 99% confidence interval for the above parameters is",mu-b,mu+b,"milliliter")


# the similar question can be addressed as shown below
set.seed(100)
v <- rnorm(36,2.6,0.3)
t.test(v,conf.level = 0.95)$conf.int

# but as we can see each time different ci are there, if n becomes very large then it will be very close to the standard answer..







