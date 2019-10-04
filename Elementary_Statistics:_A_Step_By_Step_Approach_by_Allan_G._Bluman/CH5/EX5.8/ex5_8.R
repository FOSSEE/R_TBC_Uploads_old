out<-c(0,1,2,3,4)
pr<-c(0.06, 0.70, 0.20, 0.03, 0.01)
mea<-weighted.mean(out,pr)
n<-paste("the mean of the probability distribution is",round(mea,digits=3))
n