#EX_7_8
#page 11
n<-100#number of packages loaded
p1<-5#weights are uniformly distributed between 5and 50
p2<-50
pi<-3.14
#mean and variance of single package
mue<-sum(p1,p2)/2
mue
var<-sum(50,-5)^2/12
var
z<-(3000-prod(100,mue))/sqrt(var*100)#normalized value of the mean and variance
z
#function to calculate the CDF normal random variable 
f<-function(t)
{
  return((1/sqrt(2*pi))*exp(1)^(-(t^2)/2))
}
phi1.92<-integrate(f,-Inf,1.92)#calculate the CDF of normal random variable from the normal table
phi1.92$val
p_greater_3000<-1-phi1.92$val#the desired probability that the total weight exceeds 3000pounds
p_greater_3000