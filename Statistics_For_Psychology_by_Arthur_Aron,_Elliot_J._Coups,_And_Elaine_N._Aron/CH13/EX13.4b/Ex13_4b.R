                                    # Page no. : 571 - 572

# Worked out examples 2

# Contingency Table

participant_gender <- c(rep("Men", 29), rep("Women", 17), rep("Men", 4), rep("Women", 14),
                        rep("Men", 26), rep("Women", 28))
comparision <- c(rep("Same sex", 46), rep("Opposite sex", 18), rep("Both sexes", 54))

c_t <- table(comparision, participant_gender)   # Contingency table

c_t

# Direct method

result <- chisq.test(c_t)
result

# Expected values

expected <- round(result$expected, 2)
expected    # Book's table 13-12

# Figuring chi - square

chi_sq <- round(result$statistic, 2)

cat("Chi-square value is", chi_sq)   

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