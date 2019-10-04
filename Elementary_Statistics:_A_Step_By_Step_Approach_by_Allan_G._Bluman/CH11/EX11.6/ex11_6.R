u<-c(10,9,8,13,16,12)
m<-matrix(u,ncol=3,byrow = TRUE)
colnames(m)<-c("low", "moderate", "high")
rownames(m)<-c("Male","Female")
m<-as.table(m)
m
chisq.test(m)
