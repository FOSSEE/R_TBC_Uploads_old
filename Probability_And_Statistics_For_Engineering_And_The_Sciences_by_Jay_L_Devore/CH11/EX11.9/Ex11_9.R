#Ex11.9, Page 439
#Answers may vary slightly from textbook values

#To create data frame
Casmater<-rep(c("Steel","Aluminium","Plastic"),10)
Source<-rep(c("1","2","3","4","5"),each=6)
Power<-c(13.1,15.0,14.0,13.2,14.8,14.3,16.3,15.7,17.2,15.8,16.4,16.7,13.7,13.9,12.4,14.3,14.3,12.3,15.7,13.7,14.4,15.8,14.2,13.9,13.5,13.4,13.2,12.5,13.8,13.1)

df1<-data.frame(Casmater,Source,Power)
print(df1)

#To create ANOVA table
a<-aov(Power~Casmater+Source+Casmater:Source,data=df1)
print(a)
cat("\nSummarized table:\n")
print(summary(a))