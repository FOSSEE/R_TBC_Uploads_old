
# Using T distribution

uts <- c(253,261,258,255,256)

mu = mean(uts)
sig = sd(uts)
n = 5
alpha = 1 -0.95

a <- qt(alpha/2, df= n-1)

cat("Therefore, the interval is ", mu + a*sig/sqrt(n), " - ", mu - a*sig/sqrt(n))
