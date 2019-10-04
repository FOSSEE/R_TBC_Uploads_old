#H0 : mu<=100
#H1 : mu=103

n= 30
mu =100
sd = 4
alpha =0.01

z = qnorm(alpha,lower.tail = F)
sample_mean = mu + z*sd/sqrt(n)

true_mean =103
s = sd/sqrt(n)
            
#P(X<= sample_mean)
p_value = pnorm(sample_mean,true_mean,s)
cat("Therefore, the probability of type II error when true avg pressure is 103 =",p_value )
