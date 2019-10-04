                                     # Page no. : 416 - 417

# How are you doing?

# 1st Question (c) part

var_rows <- 9.45   # Variance (rows)
df_rows <- 1   # Degree of freedom (rows)

var_within <- 3.67   # Variance within-groups
df_within <- 36   # Degree of freedom within-groups

r_sq2 <- round((var_rows * df_rows) / ((var_rows * df_rows) + (var_within * df_within)), 2)
# The proportion of Variance announced for

cat("The proportion of Variance announced for is", r_sq2)