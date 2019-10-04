                                    # Page no. : 71

# Formula to change Raw Score to Z Score

x <- 8   # Raw Score
m <- 12   # Mean
sd <- 4   # Standard Deviation

Z <- (x - m) / sd

cat("Z Score is", Z)

# Formula to change Z Score to Raw Score

Z <- 1.5   # Z Score
sd <- 4   # Standard Deviation
m <- 12   # Mean

X <- (Z * sd) + m

cat("Raw Score is", X)