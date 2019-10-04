                                    # Page no. : 549 -550

# Another example

condition <- c("Anxiety disorder", "Alcohol or drug abuse", "Mood disorder",
               "Impulse - control disorder", "None of these conditions")

observed <- c(138, 99, 123, 111, 529)

expected <- c(146, 80, 110, 128, 536)

DF <- data.frame(condition, observed, expected)
View(DF)

alpha <- 0.05   # 5% significance level
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