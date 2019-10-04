                                       # Page no. : 334 - 335

# Another example

# Attachment Styl - Secure

n1 <- 10   # Sample size
df1 <- n1 - 1   # Degree of freedom
m1 <- 2.10   # Mean 
sd1 <- 1.66   # Standard deviation
var1 <- 2.76   # Variance

# Attachment Styl - Avoidant

n2 <- 10   # Sample size
df2 <- n2 - 1   # Degree of freedom
m2 <- 3.70   # Mean 
sd2 <- 1.89   # Standard deviation
var2 <- 3.57   # Variance

# Attachment Styl - Anxious-Ambivalent

n3 <- 10   # Sample size
df3 <- n3 - 1   # Degree of freedom
m3 <- 4.20   # Mean 
sd3 <- 1.93   # Standard deviation
var3 <- 3.72   # Variance

n_s <- 3   # Number of samples
df_within <- (n1 + n2 + n3) - n_s  # Degree of freedom within-groups
df_between <- n_s - 1   # Degree of freedom between-groups

alpha <- 0.05   # 5% Sgnificance level

fval <- qf(0.95,df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2) 

cat("Cutoff F for the 0.05 significance level is", fval)

var_within <- round((var1 + var2 + var3) / n_s, 2)   # Variance within-groups

cat("Variance within-groups is", var_within)

gm <- round((m1 + m2 + m3) / n_s, 2)   # Grand mean

gm_dev <- c((m1 - gm), (m2 - gm), (m3 - gm))   # Deviation from the grand mean
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

N <- 10   # 10 elements in each rating
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