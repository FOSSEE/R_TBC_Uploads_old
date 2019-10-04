                                     # Page no. : 79 - 81

# Examples for finding Percentage from Z Scores and Raw Scores using Normal Curve Table

m <- 100   # Mean
sd <- 15   # Standard Deviation

# a)

IQ1 <- 125

Z1 <- (IQ1 - m) / sd

cat("Z Score is", round(Z1, 2))

percent <- pnorm(Z1, lower.tail = F) * 100

cat("Percentage of IQ level is", round(percent, 2))   

# Book's answer is slightly different due to rounding off the values.

# b) 

IQ2 <- 95

Z2 <- (IQ2 - m) / sd

cat("Z Score is", round(Z2, 2))

percent <- pnorm(Z2, lower.tail = F) * 100

cat("Percentage of IQ level is", round(percent, 2)) 

# Book's answer is slightly different due to rounding off the values.