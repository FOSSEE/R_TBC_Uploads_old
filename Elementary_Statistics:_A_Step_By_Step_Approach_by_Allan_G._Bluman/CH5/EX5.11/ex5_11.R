out<-c(0,1,2,3,4)
pr<-c(0.18, 0.34, 0.23, 0.21, 0.04)
mea<-weighted.mean(out,pr)
v<-round(sum(out*out*pr),digits=1)-(round(mea,digits=1)*round(mea,digits=1))
sd<-round(sqrt(v),digits=1)
round(v,digits=1)
n<-paste("the variance and standard deviation of the probability distribution is",round(v,digits=1),"and",sd,"respectively")
n
k=2
ct<-round(mea,digits=1)+(k*round(sd,digits=1))
f<-paste("Most calls will be accomodated by",round(ct),"phone lines")
f