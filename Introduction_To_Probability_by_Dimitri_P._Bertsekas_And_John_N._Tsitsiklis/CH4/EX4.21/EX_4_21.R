#EX-4_21
#page 27
gas<-runif(1000,0,1000)
p<-1/2
s<-1
MNs<-1/8*(1+exp(1)^3)#the transform of binomial random variable of N open gas station
MNs
Mxs<-(((exp(1)^(1000*s))-1)/(1000*s))#transform of amount of gas available
Mxs
Mys<-(1/8)*(1+Mxs)^3
Mys#transform assosiated with y