
# Chapter 9
# example 9.4 page no. 274
# To find 95% bound for mean..

# to find the 95% bound for the mean reaction time

avg_t <- 6.2

n <- 25

s_d <- 2

cat("The 95% bound is given by",avg_t+qnorm(0.95)*s_d/sqrt(n))


