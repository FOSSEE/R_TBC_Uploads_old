                                    # Page no. : 359 - 360

# Worked out examples 1

N <- 20   # 20 participants in each group
n_g <- 4   # Numbr of groups

m1 <- 15   # Mean 1
var1 <- 20   # Variance 1

m2 <- 12   # Mean 2
var2 <- 25   # Variance 2

m3 <- 18   # Mean 3
var3 <- 14   # Variance 3

m4 <- 15   # Mean 4
var4 <- 27   # Variance 4

alpha <- 0.05   # 5% significant level

df_between <- n_g - 1   # Degree of freedom between-groups
df_within <- (4 * N) - (n_g)  # Degree of freedom within-groups

var_within <- round((var1 + var2 + var3 + var4) / n_g, 2)   # Variance within-groups
cat("Variance within-groups is", var_within)

gm <- (m1 + m2 + m3 + m4) / n_g   # Grand mean
gm_dev <- c((m1 - gm), (m2 - gm), (m3 - gm), (m4 - gm))   # Deviation from the grand mean 
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean 

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

var_between <- d_var * N   # Variance between-groups

cat("Variance between-groups is", var_between)

fvalue <- round(var_between / var_within, 2)   # F ratio
cat("F ratio is", fvalue)

fval <- qf(0.95,df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

if(fvalue >= fval)
{
  cat("Reject Null Hypothesis")
} else {
  cat("Cannot reject Null Hypothesis")
}