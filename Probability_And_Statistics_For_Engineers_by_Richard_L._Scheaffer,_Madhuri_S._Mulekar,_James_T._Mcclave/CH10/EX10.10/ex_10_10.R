n= 36
mu =15
sample_mean=17
sd = 3
alpha =0.05

stat = (sample_mean-mu)/(sd/sqrt(n))
p_value= pnorm(stat,lower.tail = F)
cat("Thus the p-value for this test is ",p_value," and we would reject H0 for any significance level
    greater than or equal to this p-value")
