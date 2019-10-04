gain<-c(350,-1)#win and lose
pr<-c(0.001,0.999)
e<-weighted.mean(gain,pr)
n<-paste("the expectation of the event is",e)
n