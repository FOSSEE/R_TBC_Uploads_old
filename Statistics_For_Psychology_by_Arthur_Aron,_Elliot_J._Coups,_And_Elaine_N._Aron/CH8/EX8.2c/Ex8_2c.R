                                # Page no. : 289 - 291

# How are you doing?

# 2nd Question (a) part

alpha <- 0.05   # 5% significance level

n1 <- 26   # Sample size 1
df1 <- n1 - 1   # Degree of freedom
m1 <- 5   # Mean 1
var1 <- 10   # Variance 1

n2 <- 36   # Sample size 2
df2 <- n2 - 1   # Degree of freedom
m2 <- 8   # Mean 2
var2 <- 12   # Variance 2

df <- df1 + df2   # Total degrees of freedom

p_var <- ((df1 / df) * var1) + ((df2 / df) * var2)   # Pooled variance

cat("Pooled variance is \n", round(p_var, 2))

d_var1 <- p_var / n1   # Variance of the distribution of means of sample 1

cat("Variance of the distribution of means of sample 1 is \n", round(d_var1, 2))

d_var2 <- p_var / n2   # Variance of the distribution of means of sample 2

cat("Variance of the distribution of means of sample 2 is \n", round(d_var2, 2))

diff_var <- d_var1 + d_var2   # Variance difference

cat("Variance difference is \n", round(diff_var, 2))

diff_sd <- sqrt(diff_var)   # Standard deviation difference

cat("Standard deviation difference is \n", round(diff_sd, 2))

# One - Tailed 

tval <- qt(alpha, df)

t <- round((m1 - m2) / diff_sd, 2)   # t score

cat("t score is \n", t)

if(t < tval)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}