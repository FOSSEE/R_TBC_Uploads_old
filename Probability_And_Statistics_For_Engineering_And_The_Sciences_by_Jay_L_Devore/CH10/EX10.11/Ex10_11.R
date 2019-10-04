#Ex.10.11, Page 415

#H0: sigmaA^2=0

C1<-c(55,53,54)
C2<-c(26,37,32)
C3<-c(78,91,85)
C4<-c(92,100,96)
C5<-c(49,51,50)
C6<-c(80,85,83)
data1<-data.frame(C1,C2,C3,C4,C5,C6)
print(paste("x..=",sum(data1)))


#To create ANOVA table
col<-stack(data1)
names(col)<-c("Type","Treatments")
a<-aov(Type~Treatments,data=col)
print(paste("ANOVA table:"))
print(summary(a))