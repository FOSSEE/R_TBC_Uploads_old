                                      # Page no. : 569 - 570

# Worked out examples 1

grade <- LETTERS[1:5]
observed <- c(10, 34, 140, 10, 6)
expected <- c(5, 28, 134, 28, 5)

DF <- data.frame(grade, observed, expected)
View(DF)

alpha <- 0.01   # 1% significance level
df <- nrow(DF) - 1   # Degree of freedom

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

diff <- DF$observed - DF$expected   # Difference
diff_sq <- diff ** 2   # Difference squared
ans <- round(diff_sq / DF$expected, 2)   # Difference squared weighted by expected frequency

chi_sq <- sum(ans)   # Chi-square 

cat("Value of chi-square is", chi_sq)

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}