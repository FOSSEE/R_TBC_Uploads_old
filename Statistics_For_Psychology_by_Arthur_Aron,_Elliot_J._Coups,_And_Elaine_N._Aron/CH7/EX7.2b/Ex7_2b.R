                                      # Page no. : 245 - 246

# A second example of a t test for dependent means

student <- c(1:10)

n <- 10   # Sample size

df <- n - 1   # Degree of freedom

# Brain Activation

b_p <- c(1487.8, 1329.4, 1407.9, 1236.1, 1299.8, 1447.2, 1354.1, 1204.6, 
         1322.3, 1388.5)   # Beloved's photo
c_p <- c(1487.2, 1328.1, 1405.9, 1234.0, 1298.2, 1444.7, 1354.3, 1203.7,
         1320.8, 1386.8)   # Control photo

diff <- b_p - c_p   # Difference
mean <- mean(diff)   

deviation <- round(diff - mean, 2)

sq_dev <- round(deviation ** 2, 2)   # Squared deviation

data_frame <- data.frame(student, b_p, c_p, diff, deviation, sq_dev)

View(data_frame)

mu <- 0   # Assumed mean

var <- sum(data_frame$sq_dev) / df   # Variance

d_var <- var / n   # Variance of the distribution of means

d_sd <- sqrt(d_var)   # Standar deviation of the distribution of means

alpha <- 0.05   # 5% significance level

# OOne - Tailed

tval <- round(qt(alpha, df, lower.tail = F), 2)

t <- (mean - mu) / d_sd   # Actual t value

cat("Value of t is", t)

if(t > tval)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}
