                                  # Page no. : 214 - 215

# Advanced topic : Figuring Statistical Power

m <- 200   # Mean
sd <- 48   # Standard deviation
var <- sd ** 2   # Variance
n <- 64   # No. of students

d_sd <- sqrt(var/n)  # Standard deviation of distribution of means

m2 <- 208

# Reference to page no. 189

alpha <- 0.05   # 5% significance level
zval <- qnorm(alpha, lower.tail = F)   # Z value at 5% significance level

r_s <- round((zval * d_sd) + m, 2)    # Raw score

# Reference over

z <- (r_s - m2) / d_sd

cat("Value of z is", round(z, 2))
