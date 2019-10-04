out<-c(0,1,2)
pr<-c(1/4,1/2,1/4)
mea<-weighted.mean(out,pr)
n<-paste("the mean of the probability distribution is",round(mea,digits=3))
n