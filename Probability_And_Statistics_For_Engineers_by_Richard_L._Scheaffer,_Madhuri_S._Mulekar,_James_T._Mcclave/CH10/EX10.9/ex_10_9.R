#H0 : mu<=15
#H1 : mu>15

n= 36
mu =15
sample_mean=17
sd = 3
alpha =0.05

stat = (sample_mean-mu)/(sd/sqrt(n))

compare = qnorm(alpha,lower.tail = F)

if(stat<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}
