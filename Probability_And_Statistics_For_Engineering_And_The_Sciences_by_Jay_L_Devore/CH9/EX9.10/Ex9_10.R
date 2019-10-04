#Ex9.10, Page 369
#Answers may vary slightly due to rounding off of values

Subject<-c(1,2,3,4,5,6,7,8,9,10,11,12,13)
Slide<-c(30,35,40,25,20,30,35,62,40,51,25,42,33)
Digital<-c(25,16,15,15,10,20,7,16,15,13,11,19,19)
Difference<-Slide-Digital
data<-data.frame(Slide,Digital,Difference,row.names=Subject)
print(data)

#Normal probability plot
qqnorm(data$Difference,main="Normal probability plot of the differences",ylab="diff",xlab="Probability")
qqline(data$Difference)

#To find t critical value
alpha<-0.05
t<-qt(1-alpha/2,df=12)
print(paste("t statistic value:",t))

#To find confidence intervals
t1<-t.test(Slide,Digital,paired=TRUE)
print(t1)
