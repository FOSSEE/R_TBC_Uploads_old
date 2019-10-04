                                    # Page no. : 150 - 152

# Example 1 for Hypothesis testing with a distribution of means: The Z Test

n <- 64   # No. of students
mean <- 220   # Sample Mean
d_mean <- 200   # Distribution of means
sd <- 48   # Population standard deviation
var <- sd ** 2   # Population variance
d_var <- var / n   # Variance for the distribution of means
d_sd <- sqrt(d_var)   # standard deviation for the distribution of means
alpha <- 0.05   # Significance level
zval <- qnorm(alpha, lower.tail = F)   # Z value at 5% significance level

z <- (mean - d_mean) / d_sd

cat("The value of z-score is", z)

if(z > zval)
{
  cat("Reject null hypothesis")
} else
{
  cat("We cannot reject null hypothesis")
}