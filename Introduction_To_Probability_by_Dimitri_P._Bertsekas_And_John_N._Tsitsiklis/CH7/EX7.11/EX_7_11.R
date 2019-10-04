#EX_7_11
#page 15
n<-36
p<-0.5
P21<-numeric(22)
comb<-function(n,x)
{
  return(factorial(n)/factorial(n-x)/factorial(x))
}#function to calculate the combination
for(i in 1:22)
{
  P21[i]<-comb(n,(i-1))
}
P21#exact valuep(Sn<=21)
p<-sum(P21*(0.5^36))
f<-function(t)
{
  return((1/sqrt(2*pi))*exp(1)^(-(t^2)/2))
}#function to calculate the CDF normal random variable
p21<-integrate(f,-Inf,1)
p21$val#the central limit approximation
P21<-integrate(f,Inf,1.17)#Using the proposed re???nement
P21$val#which is much closer to the exact value
z1<-(19.5-18)/3
z2<-(18.5-18)/3
p1<-integrate(f,-Inf,z1)
p2<-integrate(f,-Inf,z2)
p19<-p1$val-p2$val
p19# de Moivre - Laplace formula also allows us to approximate the probability of a single value
P19<-comb(n,19)*(0.5^36)
P19#exact value P(Sn=19)