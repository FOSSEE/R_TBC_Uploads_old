
# Chapter 9
# example 9.22 page no. 311 from the pdf..
# Maximum Likelihood Estimation Problem..

# Note - Example 9.20 and 9.21 are theoretical with nothing to Compute..

# given survival time in months for 10 rats, to find the maximum estimate of the mean survival time..
# package used "stats4", if it is not installed on your studio then you need to execute the following instruction - install.packages("stats4")

library(stats4)

y <- c(14,17,27,18,12,8,22,13,19,12)

f <- function(lambda){ -sum(dpois(y, lambda, log = TRUE))}

ans <- mle(f, start = list(lambda = 1), nobs = NROW(y))

print("The maximum likelihood estimate of the mean survival time is")

coef(ans)

# same is the concept for example 9.23 just we have to change the function and vector of observations..