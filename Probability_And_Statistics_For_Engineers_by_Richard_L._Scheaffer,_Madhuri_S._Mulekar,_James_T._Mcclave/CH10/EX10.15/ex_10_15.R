#H0 : mu=1200
#H1 : mu=not=1200

n= 10
mu =1200
sample_mean=1290
sd = 110
alpha =0.05

t = (sample_mean -mu)/(sd/sqrt(n))

#using rejection region approach
compare = qt(1 - alpha/2,df=n-1,lower.tail = T)

if(t<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}
