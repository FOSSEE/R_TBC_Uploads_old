                                     # Page no. : 72

# Additional Example (1) to change Raw Score to Z Score and Vice Versa

# a) Raw Score to Z Score

m <- 3.40   # Mean
sd <- 1.47   # Standard Deviation
x <- 6   # Raw Score

Z <- (x - m) / sd

cat("Z Score is", round(Z, 2))

# b) Z Score to Raw Score

Z <- -1.63   # Z Score

X <- (Z * sd) + m

cat("Raw Score is", round(X, 2))