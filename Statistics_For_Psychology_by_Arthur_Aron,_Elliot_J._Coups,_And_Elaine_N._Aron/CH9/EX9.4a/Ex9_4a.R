                                    # Page no. : 345 - 346

# Effect size for the analysis of variance

var_within <- 5.33   # Variance within-groups 
var_between <- 21.70   # Variance within-groups 

df_between <- 2   # Degree of freedom between-groups
df_within <- 12  # Degree of freedom within-groups

r_sq <- round((var_between * df_between)/((var_between * df_between)+(var_within * df_within)),2)
                                                     # Proportion of variance accounted for

cat("Proportion of variance accounted for is", r_sq)

# Another approach

f <- 4.07   # F value (Ratio)

r_sq <- round((f * df_between)/((f * df_between) + (df_within)),2) 
                                        # Proportion of variance accounted for

cat("Proportion of variance accounted for is", r_sq)