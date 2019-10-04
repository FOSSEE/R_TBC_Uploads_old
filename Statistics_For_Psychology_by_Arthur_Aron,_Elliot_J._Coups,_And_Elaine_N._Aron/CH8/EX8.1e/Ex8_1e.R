                                    # Page no. : 282 - 283

# How are you doing?

# 5th Question (a) part

n1 <- 21   # Sample 1 participants
df1 <- n1 - 1   # Degree of  freedom 1
var1 <- 100   # Variance

n2 <- 31   # Sample 1 participants
df2 <- n2 - 1   # Degree of  freedom 1
var2 <- 200   # Variance

df <- df1 + df2   # Total degrees of freedom

p_var <- ((df1 / df) * var1) + ((df2 / df) * var2)   # Pooled variance

cat("Pooled variance is", p_var)

d_var1 <- p_var / n1   # Variance of the distribution of means of sample 1

cat("Variance of the distribution of means of sample 1 is", round(d_var1, 2))

d_var2 <- p_var / n2   # Variance of the distribution of means of sample 2

cat("Variance of the distribution of means of sample 2 is", round(d_var2, 2))

diff_var <- d_var1 + d_var2   # Variance difference

cat("Variance difference is", round(diff_var, 2))

diff_sd <- sqrt(diff_var)   # Standard deviation difference

cat("Standard deviation difference is", round(diff_sd, 2))