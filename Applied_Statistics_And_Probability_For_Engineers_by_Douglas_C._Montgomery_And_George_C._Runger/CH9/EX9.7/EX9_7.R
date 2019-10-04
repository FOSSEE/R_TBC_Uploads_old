#install.packages("pwr")
library(pwr)

#Golf Club Design Sample Size(Pg no. 337)
s = 0.02456
diff = 0.02
sample_size = 15
d = diff/s
d
alpha = 0.05
ans = pwr.t.test(n = sample_size, d = d, sig.level = alpha, type = "one.sample", alternative = "greater")$power
cat("Since the probability of rejecting null hypothesis is appox.",round(ans, digits = 1),"we conclude that a sample size of n = 15 is adequate to provide the desired sensitivity")
