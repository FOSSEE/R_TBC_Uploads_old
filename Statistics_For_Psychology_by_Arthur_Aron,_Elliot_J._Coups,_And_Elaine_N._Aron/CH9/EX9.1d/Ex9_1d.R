                                      # Page no. : 338 - 339

# How are you doing?

# 1st Question (a) part

N <- 16   # Participants in each group
df <- N - 1   # Degree of freedom

# Group 1

m1 <- 20   # Mean
var1 <- 8   # Variance

# Group 2

m2 <- 22   # Mean
var2 <- 9   # Variance

# Group 3

m3 <- 18   # Mean
var3 <- 7   # Variance

alpha <- 0.01   # 1% Sgnificance level

n_s <- 3   # Number of samples
df_within <- (3 * N) - n_s  # Degree of freedom within-groups
df_between <- n_s - 1   # Degree of freedom between-groups


fval <- qf(0.99,df_between, df_within)   # 1 - alpha = 1 - 0.01 = 0.99
fval <- round(fval, 2) 

cat("Cutoff F for the 0.05 significance level is", fval)

var_within <- round((var1 + var2 + var3) / n_s, 2)   # Variance within-groups

cat("Variance within-groups is", var_within)

gm <- round((m1 + m2 + m3) / n_s, 2)   # Grand mean

gm_dev <- c((m1 - gm), (m2 - gm), (m3 - gm))   # Deviation from the grand mean
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

var_between <- d_var * N   # Variance between-groups

cat("Variance between-groups is", var_between)

fvalue <- round(var_between / var_within, 2)   # F ratio
cat("F ratio is", fvalue)

if(fvalue >= fval)
{
  cat("Reject Null Hypothesis")
} else {
  cat("Cannot reject Null Hypothesis")
}