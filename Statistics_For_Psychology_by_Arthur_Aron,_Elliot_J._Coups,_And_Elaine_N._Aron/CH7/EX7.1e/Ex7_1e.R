                                      # Page no. : 238 - 240

# How are you doing?

# 6th Question (a) part

n <- 4   # Sample size
df <- n - 1   # Degree of freedom

m1 <- 23   # Population mean

scores <- c(20, 22, 22, 20)

mean <- mean(scores)   # Sample mean

diff <- scores - mean   # Difference from the sample's mean

sq_diff <- diff ** 2   # Squared differenc from the sample's mean

alpha <- 0.05   # 5% significance level

var <- sum(sq_diff) / df   # Variance

d_var <- var / n   # Variance of the distribution of means

d_sd <- sqrt(d_var)   # Standar deviation of the distribution of means

# One - tailed

tval <- round(qt(alpha, df, lower.tail = T), 2)

t <- (mean - m1) / d_sd   # Actual t value

cat("Value of t is", t)

if(t < tval)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}


