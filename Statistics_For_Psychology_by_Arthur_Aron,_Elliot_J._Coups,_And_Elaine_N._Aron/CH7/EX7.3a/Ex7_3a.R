                                      # Page no. : 252

# Effect size for the t test for dependent means

mu1 <- 4   # Mean 1
mu2 <- 0   # Mean 2
sd <- 8   # Standard deviation

d <- (mu1 - mu2) / sd   # Effect size

cat("Effect size is", d)

m_d <- -12.05   # Mean of the difference scores
var <- 153.49   # Variance
sd <- round(sqrt(var), 2)   # Standard deviation

d <- round((m_d - mu2) / sd, 2)   # Effect size

cat("Effect size is", d)