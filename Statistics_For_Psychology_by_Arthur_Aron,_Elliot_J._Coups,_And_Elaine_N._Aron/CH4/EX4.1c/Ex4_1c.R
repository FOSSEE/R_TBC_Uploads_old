                                  # Page no. : 119 - 120

# How are you doing?

# 6th Question

m <- 30   # Mean
sd <- 4   # Standard Deviation
x <- 40   # Raw Score
alpha <- 0.05   # 5% Significance level

# Top 5%

cutoff <- qnorm(1 - alpha)   # Cutoff Sample Z Score
cutoff <- round(cutoff, 2)

z <- (x - m) / sd   # Actual Sample Z Score

cat("Cutoff Sample Z Score is ", cutoff)
cat("Actual Sample Z Score is", z)

if(z > cutoff)
{
  cat("We reject null hypothesis since actual sample z score is greater than cutoff sample z 
      score.")
}else{
  cat("We cannot reject null hypothesis.")
}