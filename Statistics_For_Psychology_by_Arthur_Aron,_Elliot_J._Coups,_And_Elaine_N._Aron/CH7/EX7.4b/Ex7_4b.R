                                    # Page no. : 259 - 261

# Worked out examples 2

participant <- c(1:10)
n <- 10   # Sample size
df <- n - 1   # Degree of freedom

before <- c(10.4, 12.6, 11.2, 10.9, 14.3, 13.2, 9.7, 11.5, 10.8, 13.1)
after <- c(10.8, 12.1, 12.1, 11.4, 13.9, 13.5, 10.9, 11.5, 10.4, 12.5)

diff <- after - before   # Difference
mean <- mean(diff)

deviation <- round(diff - mean, 2)

sq_dev <- round(deviation ** 2, 2)   # Squared deviation

data_frame <- data.frame(participant, before, after, diff, deviation, sq_dev)

View(data_frame)

mu <- 0   # Assumed mean

var <- sum(data_frame$sq_dev) / df   # Variance

d_var <- var / n   # Variance of the distribution of means

d_sd <- sqrt(d_var)   # Standar deviation of the distribution of means

alpha <- 0.05   # 5% significance level

# Two - Tailed

tval <- round(qt(1 - alpha/2, df), 2)
tval <- c(tval, -tval)

t <- (mean - mu) / d_sd   # Actual t value

cat("Value of t is", t)

if(t > tval[1] || t < tval[2])
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}
