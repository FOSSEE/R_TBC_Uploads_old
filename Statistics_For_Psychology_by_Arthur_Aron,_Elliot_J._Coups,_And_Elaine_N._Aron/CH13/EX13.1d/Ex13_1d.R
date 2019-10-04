                                     # Page no. : 551 - 553

# How are you doing?

# 5th Question (a) part

alpha <- 0.05   # 5% significance level
categories <- 2

observed <- c(15, 35)
N <- sum(observed)   # total 
expected <- c(0.6 * N, 0.4 * N)

df <- categories - 1   # Degree of freedom

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

diff <- observed - expected   # Difference
diff_sq <- diff ** 2   # Difference squared
ans <- round(diff_sq / expected, 2)   # Difference squared weighted by expected frequency

chi_sq <- sum(ans)   # Chi-square 

cat("Value of chi-square is", chi_sq)

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}