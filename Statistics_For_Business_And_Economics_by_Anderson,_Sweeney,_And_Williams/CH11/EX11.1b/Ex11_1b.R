                                      # Page no. : 455 - 456

# Hypothesis Testing

n <- 24   
alpha <- 0.05   # Significance Level
sigma0_sq <- 4   
variance <- 4.9   

chisq_value <- ((n - 1) * variance) / sigma0_sq

df <- n - 1   # Degree of Freedom

# Upper Tail Test

# P-value Approach

pval <- pchisq(chisq_value, df, lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}

# Critical Value Approach

chisqvalue <- qchisq(0.95,df)   # Chi-square value for 0.95 (1 - 0.05)

if(chisq_value >= chisqvalue)
{
  cat("Since Chi-square value",chisq_value,"is greater than or equal to Chi-square value",chisqvalue,
      "therefore we will reject Null Hypothesis")
} else {
  cat("Since Chi-square value",chisq_value,"is less than Chi-square value",chisqvalue,
      "therefore we cannot reject Null Hypothesis")
}


                                        # Page no. : 456 - 457

n <- 30   
alpha <- 0.05   # Significance Level
sigma0_sq <- 100   
variance <- 162   

chisq_value <- ((n - 1) * variance) / sigma0_sq

df <- n - 1   # Degree of Freedom

# Two Tail Test

# P-value Approach

pval <- 2 * pchisq(chisq_value, df, lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}
