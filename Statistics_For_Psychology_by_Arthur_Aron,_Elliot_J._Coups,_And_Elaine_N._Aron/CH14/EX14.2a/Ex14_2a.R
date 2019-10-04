                                      # Page no. : 595 - 596

# An example of a rank - order test

highly_sensitive_no <- c(0, 3, 10, 22)
highly_sensitive_yes <- c(17, 36, 45, 75)

DF <- data.frame( highly_sensitive = rep(c("No", "Yes"), each = 4),
                  Values = c(highly_sensitive_no,  highly_sensitive_yes)
                 )

Rank <- rank(DF$Values)
DF <- cbind(DF, Rank)

View(DF)

alpha <- 0.05   # 5% significance level

result <- wilcox.test(highly_sensitive_no, highly_sensitive_yes, paired = T)

result

p_value <- result$p.value

if(p_value > alpha)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}