#H0 : sigma1^2 = sigma2^2
#H1 : sigma1^2 < sigma2^2


n1= 10
n2= 20
var1=0.003
var2=0.001
alpha=0.05

F = var1/var2

#Left-tailed test
compare= qf(1-alpha,n1 -1,n2 -1,lower.tail = T)

if(F<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}


#Alternative solution

p_value = 1-pf(F,n1 -1,n2 -1,lower.tail = T)
if(p_value>alpha)
{
  cat("Null Hypothesis accepted")
}else{
  cat("Hypothesis is rejected")
}

#Note:  t.test function cnnot be used as  numeric vector of data values is not given.
