                                   # Page no. : 553 - 557

# The chi - square test for independence

# Contingency Table

gender <- c(rep("Male", 28), rep("Female", 30), rep("Male", 125), rep("Female", 39))
age <- c(rep("Child", 58), rep("Adult", 164))

c_t <- table(age, gender)   # Contingency table

c_t

# Direct method

result <- chisq.test(c_t)
result

# Expected values

expected <- round(result$expected, 2)
expected    # Book's table 13-5

# Figuring chi - square

chi_sq <- round(result$statistic, 2)

cat("Chi-square value is", chi_sq)   # Answer is different from book

# Degrees of freedom

df <- result$parameter

cat("Degrees of freedom is", df)

# Hypothesis testing

alpha <- 0.05   # 5% significance level

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}