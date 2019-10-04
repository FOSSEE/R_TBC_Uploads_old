#EX_7_10
#page 12
n<-100#consider the case n=100 and e=0.1
e<-0.1
z<-function(e,n)
{
  return(2*e*sqrt(n))
}#function to calculate the standardized value
Z<-z(e,n)
Z#2*0.01*sqrt(n)>= 1.96
f<-function(t)
{
  return((1/sqrt(2*pi))*exp(1)^(-(t^2)/2))
}#function to calculate the CDF normal random variable
phi<-integrate(f,-Inf,Z)#the normal CDF of 2 from normal table
phi$val#phi(2)
p<-2-(2*phi$val)
p#2-2phi(2*0.01·sqrt(n))<= 0.05


