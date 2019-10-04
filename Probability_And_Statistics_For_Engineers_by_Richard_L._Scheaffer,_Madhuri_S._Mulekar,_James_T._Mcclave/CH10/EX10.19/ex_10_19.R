#Testing for variance: Normal distribution case 

n=10
var=0.0002
sample_var=0.0003
alpha=0.05

K= (n-1)*sample_var/var
compare= qchisq(alpha,df=n-1,lower.tail = F)


if(K<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}


