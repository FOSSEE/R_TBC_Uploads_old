# Mean and standard deviation in Binomial distribution :
# mean = n * p  and sd = sqrt(n*p*q)
n<-3
p<-0.868
q<-(1-p)
mean<-n*p
mean
sd<- sqrt(n*p*q)
round(sd,digits=4)