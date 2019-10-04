n= 100
mu =2
sample_mean=2.005
sd = 0.03
alpha =0.05

stat = (sample_mean-mu)/(sd/sqrt(n))
p_value= pnorm(stat,lower.tail = F)
cat("The probability of getting a sample of holes created with this drill with a mean diameter
    that is at least 1.67 standard deviations away from the depth setting of 2 inches is ",2*p_value)
