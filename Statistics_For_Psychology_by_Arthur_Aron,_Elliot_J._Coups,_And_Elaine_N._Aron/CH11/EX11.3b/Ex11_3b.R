                                    # Page no. : 459

# Significance of a correlation coefficient an example

N <- 6   # Sample size
r <- 0.85   # Correlation coefficient 
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