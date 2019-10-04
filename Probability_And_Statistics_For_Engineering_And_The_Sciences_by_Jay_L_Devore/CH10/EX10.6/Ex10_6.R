#Ex10.6, Page 404

Treatment1<-c(88.6,73.2,91.4,68.0,75.2)
Treatment2<-c(63.0,53.9,69.2,50.1,71.5)
Treatment3<-c(44.9,59.5,40.2,56.3,38.7)
Treatment4<-c(31.0,39.6,45.3,25.2,22.7)
data1<-data.frame(Treatment1,Treatment2,Treatment3,Treatment4)

Treatment<-stack(data1)
names(Treatment)<-c("Time","Model")

#To display ANOVA table
a<-aov(Time~Model,data=Treatment)
print(summary(a))

