                                  # Page no. : 100 - 102

# Worked - out Examples

# Figuring the Percentage Above or Below a Particular Raw Score or Z Score

m <- 20   # Mean
sd <- 3   # Standard Deviation
x <- 24   # Raw Score

Z <- (x - m) / sd

cat("Z Score is", round(Z,2))

percent <- pnorm(Z, lower.tail = F) * 100

cat("Percentage of people have scores above 24 is", round(percent, 2))  

# Book answer is slightly different 


# Figuring Z Scores and Raw Scores From Percentages

m <- 20   # Mean
sd <- 3   # Standard Deviation
percent <- 0.75   # 75%

Z <- qnorm(percent, lower.tail = F)

cat("Z Score is", round(Z, 2))

X <- (sd * Z) + m

cat("Raw Score is", round(X, 2))

# Book answer is slightly different (differ by 0.01)