out<-c(1,2,3,4,5,6)
pr<-c(1/6,1/6,1/6,1/6,1/6,1/6)
mea<-weighted.mean(out,pr)
v<-round(sum(out*out*pr),digits=1)-(round(mea,digits=1)*round(mea,digits=1))
sd<-round(sqrt(v),digits=1)
n<-paste("the variance and standard deviation of the probability distribution is",v,"and",sd,"respectively")
n