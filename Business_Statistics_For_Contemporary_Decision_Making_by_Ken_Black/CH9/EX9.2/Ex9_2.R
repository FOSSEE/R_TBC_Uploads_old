# t test for population mean :
# t = (sample_mean - pop_mean) / (sd/sqrt(n)) , df = n-1

pop_mean = 471
sample_mean = 498.78
sd = 46.94
n = 23
alpha = 0.05
df = n-1

# t-distribution function to calculate critical t-value using alpha and df:
qt(alpha, df, lower.tail = FALSE, log.p = FALSE)

# Observed t valueusing sample mean and standard deviation : 
t = (sample_mean - pop_mean) / (sd/sqrt(n))
t

# The observed t value of 2.84 is greater than the table t value of 1.717, 
# so the business researcher rejects the null hypothesis. 