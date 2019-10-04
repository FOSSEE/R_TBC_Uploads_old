c<-c(1,2,3,4,4,6)
r<-c(62,78,70,90,93,103)
mo<-lm(r ~ c)
mo
summary(mo)
