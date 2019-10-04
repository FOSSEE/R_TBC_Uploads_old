                                   # Page no. : 81 - 84

# Examples for finding Z Scores and Raw Scores from Percentage using Normal Curve Table

m <- 100   # Mean
sd <- 15   # Standard Deviation

# a)

percent <- 0.05   # 5%

Z1 <- qnorm(percent, lower.tail = F)

cat("Z Score is", round(Z1, 2))

IQ1 <- (sd * Z1) + m

cat("Raw Score is", round(IQ1, 2))

# b)

percent <- 0.55   # 55%

Z2 <- qnorm(percent, lower.tail = F)

cat("Z Score is", round(Z2, 2))

IQ2 <- (sd * Z2) + m

cat("Raw Score is", round(IQ2, 2))

# c)

percent <- 0.95   # 95%

Z3 <- qnorm(0.975, lower.tail = T)   # 0.95 + 0.025 since curve is symmetric

cat("Z Score is", round(Z3, 2))

IQ3 <- (sd * Z3) + m

cat("Raw Score is", round(IQ3, 2))