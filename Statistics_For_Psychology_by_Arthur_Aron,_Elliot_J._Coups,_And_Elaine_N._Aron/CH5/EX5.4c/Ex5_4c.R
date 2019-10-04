                                        # Page no. : 169

# Worked out examples 3

n <- 75   # No. of people
mean <- 16   # Sample Mean
d_mean <- 15   # Distribution of means
sd <- 5   # Population standard deviation
var <- sd ** 2   # Population variance
d_var <- var / n   # Variance for the distribution of means
d_sd <- sqrt(d_var)   # standard deviation for the distribution of means
c_i <- 0.995   # 99% confidence interval --> 1 - 0.005 = 0.995

se <- d_sd   # Standard error

cat("Standard error is", se)

r_s <- round(qnorm(c_i), 2)   # Raw score

x <- se * r_s   # How far is the confidence limit is from mean (margin of error)

y <- mean + c(-x, x)

cat("The margin of error is given by", x)   
cat("The 99% confidence interval is given by", y)   

