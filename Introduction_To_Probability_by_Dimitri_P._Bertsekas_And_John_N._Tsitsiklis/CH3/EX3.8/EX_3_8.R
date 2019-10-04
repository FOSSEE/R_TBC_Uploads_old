#EX_3_8
#page 19
#Using the Normal Table
# Its CDF is denoted by phi,
pi<-3.14
#function to calculate the CDF normal random variable 
f<-function(t)
{
  return((1/sqrt(2*pi))*exp(1)^(-(t^2)/2))
}
#to calculate the CDF of Y<=0.5  
f_0.5<-integrate(f,-Inf,0.5)
f_0.5$val
#to calculate the CDF of Y<=-0.5
f_negative_0.5<-(1-f_0.5$val)
f_negative_0.5
sd<-20#standard deviation
mean<-60#mean
y<-(80-mean)/20#calcualting the Y
y#Y is 1
#calculate the CDF of Y<=80-60/20 is phi(1)
f_1<-integrate(f,-Inf,1)
f_1$val
#to calculate the CDF of Y>=80-60/20
p_x_greater_80<-(1-f_1$val)
p_x_greater_80