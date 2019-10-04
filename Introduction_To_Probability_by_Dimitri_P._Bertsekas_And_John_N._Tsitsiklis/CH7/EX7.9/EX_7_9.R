#EX_7_9
#page 12
#processing time is independent random variable between 1and 5
mue<-3#the variance and the mean
var<-16/12
var
n<-100#the number of parts
z<-(320-(n*mue))/sqrt(var*n)
z#calculated the normalized value 
f<-function(t)
{
  return((1/sqrt(2*pi))*exp(1)^(-(t^2)/2))
}#function to calculate the CDF normal random variable
phi1.73<-integrate(f,-Inf,1.73)#the desired approximation gives p(S100>320) it is t from the normal table
phi1.73$val