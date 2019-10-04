                                         # Page no. : 167

# Worked out examples 1

sd <- 13   # Standard deviation
var <- sd ** 2   # Variance
n <- 20   # Sample size

d_sd <- sqrt(var/n)   # Standard deviation for distribution of means

cat("Standard deviation for distribution of means is", round(d_sd, 2))