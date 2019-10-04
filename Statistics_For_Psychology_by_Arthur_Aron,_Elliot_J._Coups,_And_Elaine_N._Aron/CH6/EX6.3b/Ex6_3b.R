                                    # Page no. : 216 - 217

# How are you doing?

# 1st Question (a) part

m <- 500   # Mean
sd <- 100   # Standard deviation
var <- sd ** 2   # Variance
n <- 60   # No. of people

d_sd <- sqrt(var/n)  # Standard deviation of distribution of means

m2 <- 540

alpha <- 0.05   # 5% significance level
zval <- qnorm(alpha, lower.tail = F)   # Z value at 5% significance level

r_s <- round((zval * d_sd) + m, 2)    # Raw score

z <- (r_s - m2) / d_sd

cat("Value of z is", round(z, 2))
