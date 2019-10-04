                                    # Page no. : 116 - 118

# The Second Example

m <- 70   # Mean
sd <- 10   # Standard Deviation
x <- 80   # Raw Score
alpha <- 0.05   # 5% Significance level

# Top 5%

cutoff <- qnorm(1 - alpha)   # Cutoff Z Score
cutoff <- round(cutoff, 2)

z <- (x - m) / sd   # Actual Z Score

if(z > cutoff)
{
  cat("We reject null hypothesis since actual z score is greater than cutoff z score.")
}else{
  cat("We cannot reject null hypothesis.")
}