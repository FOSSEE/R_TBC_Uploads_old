                                       # Page no. : 131 - 132

# Worked - out Examples

m <- 19   # Mean
sd <- 4   # Standard Deviation
x <- 27   # Raw Score
alpha <- 0.05   # 5% Significance level

# Two - Tailed Test

cutoff1 <- qnorm(0.025)   # 0.05 / 2 = 0.025 (Cutoff Z Score 1)
cutoff1 <- round(cutoff1, 2)

cutoff2 <- qnorm(0.975)   # 1 - 0.025 = 0.975 (Cutoff Z Score 2)
cutoff2 <- round(cutoff2, 2)

z <- (x - m) / sd   # Actual Z Score

cat("Cutoff Z scores are", cutoff1, "and", cutoff2)
cat("Actual Z score is", round(z, 2))

if(z > cutoff1 & z < cutoff2)
{
  cat("We cannot reject null hypothesis as z is lying between the cutoffs.")
}else{
  cat("We can reject null hypothesis as z does'nt lying between the cutoffs.")
}
