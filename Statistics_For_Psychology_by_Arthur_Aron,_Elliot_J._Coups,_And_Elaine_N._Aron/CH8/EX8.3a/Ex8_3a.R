                                     # Page no. : 293 - 294

# Effect size for the t test for independent means

mu1 <- 29   # Mean 1
mu2 <- 21   # Mean 2
sd <- 10   # Standard deviation

d <- (mu1 - mu2) / sd   # Effect size

cat("Effect size is \n", d)

m1 <- 33.10   # Mean 1
m2 <- 27.00   # Mean 2
p_sd <- 12.99   # Pooled standard deviation

e_d <- round((m1 - m2) / p_sd, 2)   # Estimated effect size

cat("Estimated effect size is \n", e_d)