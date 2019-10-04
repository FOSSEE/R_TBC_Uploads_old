out<-c(1,2,3,4,5,6)
pr<-c(1/6,1/6,1/6,1/6,1/6,1/6)
mea<-weighted.mean(out,pr)
n<-paste("the mean of the probability distribution is",round(mea,digits=3))
n