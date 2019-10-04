gain<-c(98,48,23,8,-2)#win and lose
pr<-c(0.002,0.002,0.002,0.002,0.992)
e<-weighted.mean(gain,pr)
n<-paste("the expectation of the event is",e)
n
