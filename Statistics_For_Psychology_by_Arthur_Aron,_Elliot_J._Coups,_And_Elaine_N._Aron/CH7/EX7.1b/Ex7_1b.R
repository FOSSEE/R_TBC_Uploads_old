                                      # Page no. : 231

# The Standard Deviation of the Distribution of Means

s <- 16   # Sample size
var <- 46.27   # Estimated population variance

d_var <- var / s   # Variance of the distribution of means

cat("Variance of the distribution of means is", round(d_var, 2))

d_sd <- sqrt(d_var)   # Standard deviation of the distribution of means

cat("Standard deviation of the distribution of means is", round(d_sd, 2))