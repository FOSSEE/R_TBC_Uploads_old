                                      # Page no. : 163

# How are you doing?

# 4th Question (b part)

n <- 36   # No. of people
mean <- 70   # Sample mean
d_mean <- 75   # Distribution of means
sd <- 12   # Standard deviation
var <- sd ** 2   # Variance
c_i <- 0.975   # 95% confidence interval --> 1 - 0.025 = 0.975

se <- sqrt(var/n)   # Standard error

cat("Standard error is", se)

r_s <- round(qnorm(c_i), 2)   # Raw score

x <- se * r_s   # How far is the confidence limit is from mean (margin of error)

y <- mean + c(-x, x)

cat("The margin of error is given by", x)   
cat("The 99% confidence interval is given by", y)   