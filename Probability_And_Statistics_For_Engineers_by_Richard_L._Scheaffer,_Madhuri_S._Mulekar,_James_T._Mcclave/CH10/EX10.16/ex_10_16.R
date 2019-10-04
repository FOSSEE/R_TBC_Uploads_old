#H0 : mu=3000
#H1 : mu<3000

n= 8
mu =3000
sample_mean=2959
sd = 39.4
alpha =0.05

t = (sample_mean -mu)/(sd/sqrt(n))

compare = qt(alpha,df=n-1)

if(t>compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}

