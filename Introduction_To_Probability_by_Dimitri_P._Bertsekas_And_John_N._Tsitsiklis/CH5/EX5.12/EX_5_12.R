#EX_5_12
#page 24
n<-56
lamda<-2#callers depart with poisson process a rate of lamda
 #the waiting time Y 
EY<-n/lamda
#the function to calculate the probabilty you have to wait for more than an hour
PY60<-function(y)
{
 return((lamda^n)*(y^(n-1))*(exp(1)^(-lamda*y))/factorial(n-1))
}
probability<-integrate(PY60, 60, Inf)#the integral function to calculate the probability of waiting more than an hour
probability$val
