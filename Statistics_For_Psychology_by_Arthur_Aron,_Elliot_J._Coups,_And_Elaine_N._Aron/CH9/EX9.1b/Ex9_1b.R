# Page no. : 331 - 333

# How are you doing?

# Data given

scores_A <- c(5, 7)
m1 <- 6   # Mean 1
n1 <- 2   # Sample size

scores_B <- c(6, 9)
m2 <- 7.5   # Mean 2
n2 <- 2   # Sample size

scores_c <- c(8, 9)
m3 <- 8.5   # Mean 3
n3 <- 2   # Sample size

# 1st Question (c) part

n_s <- 3   # Number of samples
df_within <- (n1 + n2 + n3) - n_s  # Degree of freedom within-groups

var_within <- round((var(scores_A) + var(scores_B) + var(scores_c)) / n_s, 2)   
# Variance within-groups


cat("Variance within-groups is", var_within)

# 2nd and 3rd Question (c) parts

df_between <- n_s - 1   # Degree of freedom between-groups
gm <- round((m1 + m2 + m3) / n_s, 2)   # Grand mean

gm_dev <- c((m1 - gm), (m2 - gm), (m3 - gm))   # Deviation from the grand mean
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

N <- 2   # 2 elements in each rating
var_between <- d_var * N   # Variance between-groups

cat("Variance between-groups is", var_between)

# 4th Question (c) part

fvalue <- round(var_between / var_within, 2)   # F ratio
cat("F ratio is", fvalue)

# 5th and 6th Question (c) parts

cat("Between-groups degree of freedom is", df_between)
cat("Within-groups degree of freedom is", df_within)

alpha <- 0.05   # 5% Sgnificance level

fval <- qf(0.95,df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

cat("Cutoff F for the 0.05 significance level is", fval)