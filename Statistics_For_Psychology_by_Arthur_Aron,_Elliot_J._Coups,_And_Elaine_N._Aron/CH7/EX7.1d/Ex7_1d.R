                                  # Page no. : 235 - 236

# Another example of a t test for a single sample

rating <- c(5, 3, 6, 2, 7, 6, 7, 4, 2, 5)
n <- 10 

mean <- mean(rating)   # Rating mean

diff <- rating - mean   # Difference from the sample's mean

sq_diff <- diff ** 2   # Squared differenc from the sample's mean

data_frame <- data.frame(rating, diff, sq_diff)

View(data_frame)

df <- n - 1   # Degree of freedom

mu <- 4   # Distribution of means

var <- sum(data_frame$sq_diff) / df   # Variance

d_var <- var / n   # Variance of the distribution of means

d_sd <- sqrt(d_var)   # Standar deviation of the distribution of means

alpha <- 0.01   # 1% significance level

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






