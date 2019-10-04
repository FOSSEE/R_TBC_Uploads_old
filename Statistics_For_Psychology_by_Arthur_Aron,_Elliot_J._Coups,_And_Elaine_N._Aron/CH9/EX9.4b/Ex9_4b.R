                                        # Page no. : 348

# How are you doing?

# 2nd Question (d) part

var_within <- 7.20   # Variance within-groups 
var_between <- 12.22   # Variance within-groups 

df_between <- 2   # Degree of freedom between-groups
df_within <- 8  # Degree of freedom within-groups

r_sq <- round((var_between * df_between)/((var_between * df_between)+(var_within * df_within)),2)
                                             # Proportion of variance accounted for

cat("Proportion of variance accounted for is", r_sq)

# 3rd Question (c) part

N <- 18   # 18 participants in each group
t_g <- 3   # Total groups 
f <- 4.50   # F value (Ratio)

df_between <- t_g - 1   # Degree of freedom between-groups
df_within <- (t_g * N) - t_g  # Degree of freedom within-groups

r_sq <- round((f * df_between)/((f * df_between) + (df_within)),2) 
                                        # Proportion of variance accounted for

cat("Proportion of variance accounted for is", r_sq)