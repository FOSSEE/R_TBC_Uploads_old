                                      # Page no. : 560 - 561

# How are you doing?

# 4th Question (a) part

nominal_variable_A <- c(rep("Category1", 10), rep("Category2", 10), rep("Category1", 50), 
                        rep("Category2", 10), rep("Category1", 10), rep("Category2", 10))
nominal_variable_B <- c(rep("Category1", 20), rep("Category2", 60), rep("Category3", 20))

c_t <- table(nominal_variable_B, nominal_variable_A)   # Contingency table

c_t

# Direct method

result <- chisq.test(c_t)
result

# Expected values

expected <- round(result$expected, 2)
expected    

# Figuring chi - square

chi_sq <- round(result$statistic, 2)

cat("Chi-square value is", chi_sq)   

# Degrees of freedom

df <- result$parameter

cat("Degrees of freedom is", df)

# Hypothesis testing

alpha <- 0.10   # 10% significance level

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}   