                                          # Page no. : 161

# Confidence interval

c_i <- 0.995   # 99% confidence interval --> 1 - 0.005 = 0.995
n <- 25   # No. of students
d_mean <- 53   # Distribution of means
mean <- 48   # Sample mean
sd <- 7   # Standard deviation
var <- sd ** 2   # Variance

se <- sqrt(var/n)   # Standard error

cat("Standard error is", se)

r_s <- round(qnorm(c_i), 2)   # Raw score

x <- se * r_s   # How far is the confidence limit is from mean (margin of error)

y <- mean + c(-x, x)

cat("The margin of error is given by", x)   
cat("The 99% confidence interval is given by", y)   



