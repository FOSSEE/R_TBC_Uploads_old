                                    # Page no. : 410 - 412

# Hypothesis Tests About Difference between two Means

sigma1 <- 10   
sigma2 <- 10   
alpha <- 0.05  
n1 <- 30 
n2 <- 40  
xbar1 <- 82  
xbar2 <- 78  
D0 <- 0

z_value <- ((xbar1 - xbar2) - D0) / sqrt(((sigma1)**2/n1) + ((sigma2)**2/n2))

# P-value Approach 

# Two Tail Test

pval <- 2 * pnorm(z_value, lower.tail = F)

if(pval <= alpha)
{
  cat("Since P-Value",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else {
  cat("Since P-Value",pval,"is more than 0.05 therefore we cannot reject Null Hypothesis")
}

# Critical Value Approach 

z_half_alpha <- qnorm(0.975)   # alpha/2 = 0.05/2 = 0.025 = 1- 0.025 = 0.975
critical_value_1 <- -z_half_alpha
critical_value_2 <- z_half_alpha

if(z_value >= critical_value_2 || z_value <= critical_value_1)
{
  cat("Since Z-value",z_value,"does not lie in the range",critical_value_1,"to",critical_value_2,
      "therefore we can reject Null Hypothesis")
} else {
  cat("Since Z-value",z_value,"lie in the range",critical_value_1,"to",critical_value_2,
      "therefore we cannot reject Null Hypothesis")
}

