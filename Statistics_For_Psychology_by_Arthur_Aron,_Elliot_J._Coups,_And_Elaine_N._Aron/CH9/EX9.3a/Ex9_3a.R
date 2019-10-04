                                      # Page no. : 344 - 345

# Scheffe Test

N <- 5   # 5 elements in each sample 
f <- 4.22   # F value (overall)

df_between <- 2   # Degree of freedom between-groups
df_within <- (3 * N) - (df_between + 1)   # Degree of freedom within-groups (3 samples)
fvalue <- f / df_between   # F value (conrast)

cat("F value (contrast) is", fvalue)

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
# How are you doing?

# 5th Question 

N <- 50   # 50 elements in each sample 
f <- 12.60   # F value (overall)

df_between <- 3   # Degree of freedom between-groups
df_within <- (4 * N) - (df_between + 1)   # Degree of freedom within-groups (4 samples)
fvalue <- f / df_between   # F value (conrast)

cat("F value (contrast) is", fvalue)

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