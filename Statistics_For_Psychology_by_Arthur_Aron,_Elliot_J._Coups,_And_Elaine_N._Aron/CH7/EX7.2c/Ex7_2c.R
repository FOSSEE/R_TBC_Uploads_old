                                      # Page no. : 249 - 250

# How are you doing?

# 4th Question (a) part

person <- c(1:5)  
n <- 5   # Sample size
df <- n - 1   # Degree of freedom

before <- c(20, 30, 20, 40, 30)
after <- c(30, 50, 10, 30, 40)

diff <- after - before   # Difference
mean <- mean(diff)

deviation <- round(diff - mean, 2)

sq_dev <- round(deviation ** 2, 2)   # Squared deviation

data_frame <- data.frame(person, before, after, diff, deviation, sq_dev)

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

