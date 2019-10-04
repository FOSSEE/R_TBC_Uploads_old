                                 # Page no. : 100

# Worked - out Examples

# Changing a Raw Score to a Z Score 

m <- 80   # Mean
sd <- 20   # Standard Deviation
x <- 65   # Raw Score

Z <- (x - m) / sd

cat("Z Score is", Z)

# Changing a Z Score to a Raw Score 

m <- 200   # Mean
sd <- 50   # Standard Deviation
z <- 1.26   # Z Score

X <- (z * sd) + m

cat("Raw Score is", X)