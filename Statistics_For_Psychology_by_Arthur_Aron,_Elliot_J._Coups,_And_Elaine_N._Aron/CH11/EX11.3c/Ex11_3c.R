                                    # Page no. : 461 - 462

# How are you doing?

# 3rd Question

N <- 60   # Sample size
r <- -0.31   # Correlation coefficient 
alpha <- 0.05   # 5% significance level

df <- N - 2   # Degree of freedom

# Two - tailed

tval <- qt(1-alpha/2, df)
tval <- c(tval, -tval)

t <- round(r / sqrt((1 - (r ** 2)) / (N - 2)), 2)   # t value

cat("t value is", t)

if(t > tval[1] || t < tval[2])
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}