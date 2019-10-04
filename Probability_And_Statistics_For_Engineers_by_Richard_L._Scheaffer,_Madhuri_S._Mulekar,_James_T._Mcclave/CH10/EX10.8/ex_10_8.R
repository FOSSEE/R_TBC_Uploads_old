#H0 : mu =2
#H1 : mu Not = 2

n= 100
mu =2
sample_mean=2.005
sd = 0.03
alpha =0.05

stat = (sample_mean-mu)/(sd/sqrt(n))

compare = qnorm(alpha/2,lower.tail = F)

if(stat<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is not accepted")
}
error <- qnorm(0.975)*sd/sqrt(n)
cat(" The 95% confidence interval for mu is ",2 -error, "- ",2+ error)
