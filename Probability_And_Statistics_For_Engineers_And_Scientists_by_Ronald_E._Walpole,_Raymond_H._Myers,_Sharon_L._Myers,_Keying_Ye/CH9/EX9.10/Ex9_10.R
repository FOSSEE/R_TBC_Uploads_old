
# Chapter 9
# Example 9.10 page no. 286 from the pdf..
# Confidence Interval for the difference between 2 means..

# to find 96% confidence interval for the given information
# given..
a_mu <- 36

b_mu <- 42

n_a <- 50

n_b <- 75

sd_a <- 6

sd_b <- 8

c <- qnorm(0.98)*sqrt((sd_a*sd_a/n_a)+(sd_b*sd_b/n_b))

d <- b_mu - a_mu

cat("The 96% confidence interval of the difference in average gas mileage is",d-c,d+c)


