                                       # Page no. : 361

# Worked out examples 5

N <- 20   # 20 participants in each group
n_g <- 4   # Number of groups

df_between <- n_g - 1   # Degree of freedom between-groups
df_within <- (4 * N) - (n_g)  # Degree of freedom within-groups

var_between <- 120   # Variance between-groups
var_within <- 21.5   # Variance within-groups

r_sq <- round((var_between * df_between)/((var_between * df_between)+(var_within * df_within)),2)
                                                            # Proportion of variance accounted for

cat("Proportion of variance accounted for is", r_sq)