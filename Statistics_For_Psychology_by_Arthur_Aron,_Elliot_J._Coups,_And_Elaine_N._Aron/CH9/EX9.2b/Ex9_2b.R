                                      # Page no. : 341

# Planned contrast a second example

m1 <- 8   # Mean 1
m2 <- 4   # Mean 2
n_s <- 2   # Number of samples for contrast
N <- 5   # 5 elements in each sample 

var_within <- 5.33   # Variance within-groups 

gm <- (m1 + m2) / n_s   # Grand mean
gm_dev <- c((m1 - gm), (m2 - gm))   # Deviation from the grand mean 
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean 
df_between <- n_s - 1   # Degree of freedom between-groups (2 samples)
df_within <- (3 * N) - (n_s + 1)  # Degree of freedom within-groups (3 samples)

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

var_between <- d_var * N   # Variance between-groups

cat("Variance between-groups is", var_between)

fvalue <- round(var_between / var_within, 2)   # F ratio
cat("F ratio is", fvalue)

alpha <- 0.05   # 5% Sgnificance level

fval <- qf(0.95,df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

cat("Cutoff F for the 0.05 significance level is", fval)

if(fvalue >= fval)
{
  cat("Reject null hypothesis (Significant)")
} else {
  cat("Cannot reject null hypothesis (not significant)")
}