                                  # Page no. : 413 - 414

# Advanced Topic : Effect Size in the Factorial Analysis of Variance

var_col <- 1.20   # Variance (columns)
df_col <- 1   # Degree of freedom (columns)

var_within <- 0.03   # Variance within-groups
df_within <- 16   # Degree of freedom within-groups

r_sq1 <- round((var_col * df_col) / ((var_col * df_col) + (var_within * df_within)), 2)
                              # The proportion of Variance announced for (test difficulty)

cat("The proportion of Variance announced for (test difficulty) is", r_sq1)

var_rows <- 0.00   # Variance (rows)
df_rows <- 1   # Degree of freedom (rows)

r_sq2 <- round((var_rows * df_rows) / ((var_rows * df_rows) + (var_within * df_within)), 2)
# The proportion of Variance announced for (sensitivity)

cat("The proportion of Variance announced for (sensitivity) is", r_sq2)

var_int <- 0.60   # Variance (iteraction)
df_int <- 1   # Degree of freedom (interaction)

var_within <- 0.03   # Variance within-groups
df_within <- 16   # Degree of freedom within-groups

r_sq3 <- round((var_int * df_int) / ((var_int * df_int) + (var_within * df_within)), 2)
# The proportion of Variance announced for (test difficulty)

cat("The proportion of Variance announced for (test difficulty) is", r_sq3)