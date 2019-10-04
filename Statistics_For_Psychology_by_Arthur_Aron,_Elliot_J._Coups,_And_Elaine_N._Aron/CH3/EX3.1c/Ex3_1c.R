                                    # Page no. : 72 - 73

# Additional Example (2) to change Raw Score to Z Score and Vice Versa

# a) Raw Score to Z Score

m <- 6.43   # Mean
sd <- 2.56   # Standard Deviation
x <- 10   # Raw Score

Z <- (x - m) / sd

cat("Z Score is", round(Z, 2))

# b) Z Score to Raw Score

Z <- -1.73   # Z Score

X <- (Z * sd) + m

cat("Raw Score is", round(X, 2))