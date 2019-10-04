                                      # Page no. : 474 - 476

# Goodness of Fit Test A Multinomial Population

category <- c("Company A","Company B", "Company C")
prop <- c(0.30, 0.50, 0.20)   
freq1 <- c(48, 98, 54)    
freq2 <- c(60, 100, 40)   
diff <- freq1 - freq2   
sq_diff <- (diff)**2   
answer <- sq_diff / freq2   
DF <- data.frame(category, prop, freq1, freq2, diff, sq_diff, answer)

total_observe_freq <- sum(DF$freq1)
chisq_value <- sum(DF$answer)

alpha <- 0.05
df <- nrow(DF) - 1   # Degrees of Freedom

# Upper Tail Test

# P-value Approach

pval <- pchisq(chisq_value,df,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}

# Critical Value Approach

chisqValue <- qchisq(0.95,df)   # 1 - alpha = 1 - 0.05 = 0.95

if(chisq_value >= chisqValue)
{
  cat("Since Chi-square value",chisq_value,"is greater than or equal to Chi-square value",chisqValue,
      "therefore we will reject Null Hypothesis")
} else {
  cat("Since Chi-square value",chisq_value,"is less than Chi-square value",chisqValue,
      "therefore we cannot reject Null Hypothesis")
}
  