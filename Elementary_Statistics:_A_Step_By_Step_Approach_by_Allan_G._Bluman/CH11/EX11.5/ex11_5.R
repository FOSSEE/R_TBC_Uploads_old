u<-c(15,12,8,8,15,9,6,8,7)
m<-matrix(u,ncol=3,byrow = TRUE)
colnames(m)<-c("no college", "four year degree", "advanced college")
rownames(m)<-c("Urban","Suburban","Rural")
m<-as.table(m)
m
chisq.test(m)