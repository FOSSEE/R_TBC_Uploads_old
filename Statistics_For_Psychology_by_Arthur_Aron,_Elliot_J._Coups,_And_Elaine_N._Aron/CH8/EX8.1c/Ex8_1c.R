                                        # Page no. : 280

# The variance and standard deviation of the distribution of differences between means

var1 <- 6.82   # Variance of the distribution of means of group 1
var2 <- 2.42   # Variance of the distribution of means of group 2

diff_var <- var1 + var2   # Variance difference

cat("Variance difference is", diff_var)

diff_sd <- sqrt(diff_var)   # Standard deviation difference

cat("Standard deviation difference is", round(diff_sd, 2))