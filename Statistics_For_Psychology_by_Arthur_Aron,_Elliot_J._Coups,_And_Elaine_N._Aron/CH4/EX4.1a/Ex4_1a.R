                                     # Page no. : 111 - 115

# The Hypothesis - Testing Process

m <- 14   # Mean
sd <- 3   # Standard Deviation
x <- 6   # Raw Score
alpha <- 0.01   # 1% Significance level

# Bottom 1%

cutoff <- qnorm(alpha)   # Cutoff Z Score
cutoff <- round(cutoff, 2)

z <- (x - m) / sd   # Actual Z Score

cat("Cutoff Sample Z Score is ", cutoff)
cat("Actual Sample Z Score is", round(z, 2))

if(z < cutoff)
{
  cat("We reject null hypothesis since actual z score is less than cutoff z score.")
}else{
  cat("We cannot reject null hypothesis.")
}