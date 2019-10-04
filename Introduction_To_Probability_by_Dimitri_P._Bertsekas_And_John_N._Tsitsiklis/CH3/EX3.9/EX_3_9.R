#EX_3_9
binary_message<-c(-1,1)#the message send may be -1,1
mean<-0#mean and standard deviation is given
sd<-1
pi<-3.14
variance<-sd^2
#function to calculate the normal table
f<-function(y)
{
  return((1/sqrt(2*pi))*e^((-y^2)/2))
}
#to calculate the CDF of sending sending message is -1 is normal table phi(1)
f1<-integrate(f,0,1)
f1$val
#probabilty of error
p_N_greater_1<-1-f1$val
p_N_greater_1                                     