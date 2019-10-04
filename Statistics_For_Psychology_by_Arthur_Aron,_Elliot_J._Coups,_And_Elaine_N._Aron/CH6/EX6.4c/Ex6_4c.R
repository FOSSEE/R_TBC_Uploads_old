                                        # Page no. : 219

# Worked out examples 3

m <- 40   # Mean
sd <- 10   # Standard deviation
var <- sd ** 2   # Variance
n <- 25   # Sample size

d_sd <- sqrt(var/n)  # Standard deviation of distribution of means

m2 <- 49

alpha <- 0.01   # 1% significance level
zval <- qnorm(alpha, lower.tail = F)   # Z value at 1% significance level

r_s <- round((zval * d_sd) + m, 2)    # Raw score

z <- (r_s - m2) / d_sd

cat("Value of z is", round(z, 2))