u<-c(10,7,4,90,93,96)
m<-matrix(u,ncol=3,byrow = TRUE)
colnames(m)<-c("Airline 1", "Airline 2", "Airline 3")
rownames(m)<-c("Yes","No")
m<-as.table(m)
m
chisq.test(m)
