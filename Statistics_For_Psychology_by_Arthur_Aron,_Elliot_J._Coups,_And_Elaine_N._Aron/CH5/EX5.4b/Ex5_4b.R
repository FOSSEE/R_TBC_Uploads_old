                                  # Page no. : 167 - 168

# Worked out examples 2

n <- 75   # No. of people
mean <- 16   # Sample Mean
d_mean <- 15   # Distribution of means
sd <- 5   # Population standard deviation
var <- sd ** 2   # Population variance
d_var <- var / n   # Variance for the distribution of means
d_sd <- sqrt(d_var)   # standard deviation for the distribution of means
alpha <- 0.05   # Significance level

# Two-Tailed Test 

zval <- qnorm(1 - alpha/2)   # Z value at 1% significance level
zval <- round(c(zval, -zval),2)

z <- (mean - d_mean) / d_sd

cat("The value of z-score is", z)

if(z > zval[1] || z < zval[2])
{
  cat("Reject null hypothesis")
} else
{
  cat("We cannot reject null hypothesis")
}