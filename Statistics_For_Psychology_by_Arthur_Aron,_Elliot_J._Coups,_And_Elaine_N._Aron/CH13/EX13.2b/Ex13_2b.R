                                    # Page no. : 558 - 559

# Another example

# Contingency Table

generation <- c(rep("First", 73), rep("Other", 89), rep("First", 657), rep("Other", 1226))
drop <- c(rep("Dropped out", 162), rep("Did not drop out", 1883))

c_t <- table(drop, generation)   # Contingency table

c_t

# Direct method

result <- chisq.test(c_t)
result

# Expected values

expected <- round(result$expected, 2)
expected    # Book's table 13-7

# Figuring chi - square

chi_sq <- round(result$statistic, 2)

cat("Chi-square value is", chi_sq)   # Answer is different from book

# Degrees of freedom

df <- result$parameter

cat("Degrees of freedom is", df)

# Hypothesis testing

alpha <- 0.01   # 1% significance level

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}   
# Book's answer differ with our answer