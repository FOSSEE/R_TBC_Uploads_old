#Ex9.9, Page 367
#Answers may vary slightly due to rounding off of values

Subject<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
Before<-c(81,87,86,82,90,86,96,73,74,75,72,80,66,72,56,82)
After<-c(78,91,78,78,84,67,92,70,58,62,70,58,66,60,65,73)
Difference<-Before-After
data<-data.frame(Before,After,Difference,row.names=Subject)
print(data)

#Normal probability plot
par(mfrow=c(1,2))
qqnorm(data$Difference,main="Normal probability plot of the differences",xlab="diff",ylab="Probability")
qqline(data$Difference)
boxplot(Difference,horizontal=TRUE,xlab="Difference")

#H0: mu=0
#Ha: mu!=0
t1<-t.test(Difference,mu=0)
print(paste("t statistic value:",t1$statistic))
print(paste("p value:",t1$p.value))

alpha<-0.01
if(t1$p.value<alpha) print(paste("H0 rejected")) else print(paste("H0 not rejected"))


