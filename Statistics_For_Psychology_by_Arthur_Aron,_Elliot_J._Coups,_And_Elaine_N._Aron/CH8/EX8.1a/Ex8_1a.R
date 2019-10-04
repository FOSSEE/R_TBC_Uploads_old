                                    # Page no. : 278 - 279

# Estimating the population variance

n1 <- 11   # Group 1 participants
df1 <- n1 - 1   # Degree of freedom for group 1
var1 <- 60   # Variance

n2 <- 31   # Group 2 participants
df2 <- n2 - 1   # Degree of freedom for group 2
var2 <- 80   # Variance

df <- df1 + df2   # Total degrees of freedom

p_var <- ((df1 / df) * var1) + ((df2 / df) * var2)   # Pooled variance

cat("Pooled variance is", p_var)