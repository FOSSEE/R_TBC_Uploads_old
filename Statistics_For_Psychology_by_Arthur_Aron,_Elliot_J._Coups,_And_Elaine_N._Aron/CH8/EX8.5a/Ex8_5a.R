                                    # Page no. : 301 - 302

# Worked out examples 1

n1 <- 40   # Sample 1
df1 <- n1 - 1   # Degree of freedom
var1 <- 15   # Variance 1

n2 <- 60   # Sample 2
df2 <- n2 - 1   # Degree of freedom
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