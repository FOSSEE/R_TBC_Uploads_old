                                  # Page no. : 241 - 242

# Example of a t test for dependent means

husbands <- LETTERS[1:19]   # Upper case letters

n <- 19   # Sample size

df <- n - 1   # Degree of freedom 

# Communication Quality

before <- c(126, 133, 126, 115, 108, 109, 124, 98, 95, 120, 118, 126, 121, 116, 94, 105, 123, 
            125, 128)
after <- c(115, 125, 96, 115, 119, 82, 93, 109, 72, 104, 107, 118, 102, 115, 83, 87, 121, 100, 
           118)

diff <- after - before   # Difference
mean <- mean(diff)

deviation <- round(diff - mean, 2)

sq_dev <- round(deviation ** 2, 2)   # Squared deviation

data_frame <- data.frame(husbands, before, after, diff, deviation, sq_dev)

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

