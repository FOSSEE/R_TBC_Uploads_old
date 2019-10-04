                                      # Page no. : 462 - 464

# Inferences About Two Population Variances

alpha <- 0.10   # Significance Level
n1 <- 26   
n2 <- 16   
sv1 <- 48  
sv2 <- 20  

f_value <- (sv1) / (sv2)

df1 <- n1 - 1   # Degrees of Freedom 1
df2 <- n2 - 1   # Degrees of Freedom 2

# Two Tail Test

# P-value Approach

pval <- 2 * pf(f_value,df1,df2,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.10 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.10 therefore we cannot reject Null Hypothesis")
}

# Critical Value Approach

half_alpha <- alpha / 2
fval <- qf(0.95,df1,df2)   # half_alpha = 0.05  =  1 - 0.05 = 0.95

if(f_value >= fval)
{
  cat("Since F value",f_value,"is greater than or equal to F value",fval,
      "therefore we will reject Null Hypothesis")
} else {
  cat("Since F value",f_value,"is less than F value",fval,
      "therefore we cannot reject Null Hypothesis")
}

                                      # Page no. : 464

alpha <- 0.05   # Significance Level
n1 <- 41   
n2 <- 31   
sv1 <- 120  
sv2 <- 80  

f_value <- (sv1) / (sv2)

df1 <- n1 - 1   # Degrees of Freedom 1
df2 <- n2 - 1   # Degrees of Freedom 2

# Upper Tail Test

# P-value Approach

pval <- pf(f_value,df1,df2,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.10 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.10 therefore we cannot reject Null Hypothesis")
}

# Critical Value Approach

fval <- qf(0.90,df1,df2)   # alpha = 0.05  =  1 - 2 * 0.05 = 0.90

if(f_value >= fval)
{
  cat("Since F value",f_value,"is greater than or equal to F value",fval,
      "therefore we will reject Null Hypothesis")
} else {
  cat("Since F value",f_value,"is less than F value",fval,
      "therefore we cannot reject Null Hypothesis")
}