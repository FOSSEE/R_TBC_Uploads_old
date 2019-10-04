                                      # Page no. : 259

# Worked out examples 1

scores <- c(14, 8, 6, 5, 13, 10, 10, 6)
n <- length(scores)   # Sample size
df <- n - 1   # Degree of freedom
mean <- 6   # Given mean
alpha <- 0.05   # 5% significance level

m <- mean(scores)   # Scores mean

diff <- scores - m   # Difference

sq_diff <- diff ** 2   # Squared difference from the sample's mean

var <- sum(sq_diff) / df   # Variance

d_var <- var / n   # Variance of the distribution of means

d_sd <- sqrt(d_var)   # Standar deviation of the distribution of means

# Two - tailed

tval <- round(qt(1 - alpha/2, df), 2)
tval <- c(tval, -tval)

t <- (m - mean) / d_sd   # Actual t value

cat("Value of t is", t)

if(t > tval[1] || t < tval[2])
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}