                                  # Page no. : 866 - 868

# Wilcoxon Signed - Rank Test

worker <- c(1:11)
A <- c(10.2, 9.6, 9.2, 10.6, 9.9, 10.2, 10.6, 10.0, 11.2, 10.7, 10.6)
B <- c(9.5, 9.8, 8.8, 10.1, 10.3, 9.3, 10.5, 10.0, 10.6, 10.2, 9.8)

DF <- data.frame(worker, A, B)

options(warn = -1)

test <- wilcox.test(DF$A, DF$B, paired = T)
test

if(test$p.value >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}
