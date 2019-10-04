#H0 :  p<=0.10
#H1 :  p>0.10

n=100
p_bar=0.15
p0=0.10
alpha=0.01

z=(p_bar-p0)/sqrt(p0*(1-p0)/n)
compare= qnorm(alpha,lower.tail = F)

if(z<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}

