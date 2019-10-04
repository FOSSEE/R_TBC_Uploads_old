#Ex9.7, Page 359
#Answers may vary slightly due to rounding off of values

No_fusion<-c(2748,2700,2655,2822,2511,3149,3257,3213,3220,2753)
Fused<-c(3027,3356,3359,3297,3125,2910,2889,2902)

#H0: mu1-mu2=0
#Ha: mu1-mu2<0

#To find test staistic value
t<-t.test(No_fusion,Fused)
print(t)
print(paste("t statistic value:",t$statistic))
print(paste("df:",t$parameter))

#To plot normal probability plots
par(mfrow=c(2,1))
qqnorm(No_fusion,datax=TRUE,ylab="Not fused",xlab="Probability",main="Normal probability plot for not fused data")
qqline(No_fusion,datax=TRUE)
qqnorm(Fused,datax=TRUE,ylab="Fused",xlab="Probability",main="Normal probability plot for fused data")
qqline(Fused,datax=TRUE)