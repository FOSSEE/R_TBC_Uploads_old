                                     # Page no. : 125

# How are you doing?

# 6th Question

m <- 500   # Mean
sd <- 40   # Standard Deviation
x <- 400   # Raw Score
alpha <- 0.01   # 5% Significance level

# Two - Tailed Test

cutoff1 <- qnorm(0.005)   # 0.01 / 2 = 0.005 (Cutoff Z Score 1)
cutoff1 <- round(cutoff1, 2)

cutoff2 <- qnorm(0.995)   # 1 - 0.005 = 0.995 (Cutoff Z Score 2)
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