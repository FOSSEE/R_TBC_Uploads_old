                                        # Page no. : 361

# Worked out examples 4

N <- 10   # 10 elements in each sample 
f <- 11.21   # F value (overall)
n_g <- 5   # Number of groups

df_between <- n_g - 1   # Degree of freedom between-groups
df_within <- (5 * N) - (n_g)   # Degree of freedom within-groups (5 samples)
fvalue <- f / df_between   # F value (conrast)

cat("F value (contrast) is", fvalue)

alpha <- 0.01   # 1% Sgnificance level

fval <- qf(0.99,df_between, df_within)   # 1 - alpha = 1 - 0.01 = 0.99
fval <- round(fval, 2)

cat("Cutoff F for the 0.01 significance level is", fval)

if(fvalue >= fval)
{
  cat("Reject null hypothesis (Significant)")
} else {
  cat("Cannot reject null hypothesis (not significant)")
}