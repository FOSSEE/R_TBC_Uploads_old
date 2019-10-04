                                     # Page no. : 596 - 597

# Using parametric tests with rank - transformed data

highly_sensitive_no <- c(1, 2, 3, 5)
highly_sensitive_yes <- c(4, 6, 7, 8)

m1 <- mean(highly_sensitive_no)   # Mean
var1 <- round(var(highly_sensitive_no), 2)   # Variance

m2 <- mean(highly_sensitive_yes)   # Mean
var2 <- round(var(highly_sensitive_yes), 2)   # Variance

df1 <- length(highly_sensitive_no) - 1   # Degree of freedom of highly_sensitive_no
df2 <- length(highly_sensitive_yes) - 1   # Degree of freedom of highly_sensitive_yes

df_total <- df1 + df2   # Total degrees of freedom

# One - tailed

alpha <- 0.05   # 5% significance level

tval <- round(qt(alpha, df_total, lower.tail = T), 2)

p_var <- round(((df1 / df_total) * var1) + ((df2 / df_total) * var2), 2)   # Pooled variance

cat("Pooled variance is", p_var)

result <-t.test(highly_sensitive_no, highly_sensitive_yes)
result

t <- round(result$statistic[[1]], 2)   # t value

cat("t value is", t)

if(t < tval)
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}