out<-c(3,4,5)
pr<-c(2/5,1/5,2/5)
mea<-weighted.mean(out,pr)
v<-round(sum(out*out*pr),digits=1)-(round(mea,digits=1)*round(mea,digits=1))
sd<-round(sqrt(v),digits=1)
n<-paste("the variance and standard deviation of the probability distribution is",round(v,digits=1),"and",sd,"respectively")
n