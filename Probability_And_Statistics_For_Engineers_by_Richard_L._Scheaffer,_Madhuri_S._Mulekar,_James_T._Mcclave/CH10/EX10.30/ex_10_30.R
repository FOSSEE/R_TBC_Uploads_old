#H0 : Y follows a Poisson distribution
#H1 :  Y does not follow a Poisson distribution

x= rep(0:2, times=c(32,12,6))
table(x)
mean(x)
probs = dpois(0:1, lambda=mean(x))
comp= 1- sum(probs)

stat = chisq.test(x=c(32,12,6), p= c(probs,comp),simulate.p.value = TRUE)$statistic

alpha= 0.05
#degree of freedom = (3-1)- 1, as 1 parameter is estimated
compare = qchisq(1- alpha,df=1)

if(stat<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}


#Alternative soln..

p_value = 1-pchisq(stat,df=1,lower.tail = T)

if(p_value>0.05)
{
  cat("Hypothesis is accepted")
} else{
  cat("Hypothesis is rejected")
}

#Both solutions generate same results
