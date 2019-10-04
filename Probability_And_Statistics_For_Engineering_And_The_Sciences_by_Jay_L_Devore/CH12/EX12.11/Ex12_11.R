#Ex12.11, Page 494
#Answers may vary slightly due to rounding off of values

x<-c(5.7,6.8,9.6,10.0,10.7,12.6,14.4,15.0,15.3,16.2,17.8,18.7,19.7,20.6,25.0)
y<-c(119.0,121.3,118.2,124.0,112.3,114.1,112.2,115.1,111.3,107.2,108.9,107.8,111.0,106.2,105.0)

plot(x,y,main="Scatterplot",xlab="Air content",ylab="Density")

n<-length(x)
xi<-sum(x)
yi<-sum(y)
#To find sum of xi^2, yi^2 and xi*yi
xi2<-sum(x^2)
yi2<-sum(y^2)
xiyi<-sum(x*y)

#To find Sxx and Sxy
Sxx<-xi2-(xi^2)/length(x)
Sxy<-xiyi-(yi*xi)/length(y)
print(paste("Sxx:",Sxx))
print(paste("Sxy:",Sxy))

#To find beta1 and beta0
xbar<-mean(x)
ybar<-mean(y)
beta1<-Sxy/Sxx
beta0<-ybar-beta1*xbar
print(paste("Beta1:",beta1))
print(paste("Beta0:",beta0))

#To find SSE
SSE<-yi2-beta0*yi-beta1*xiyi
print(paste("SSE:",SSE))

#To find SST
SST<-yi2-yi^2/n
print(paste("SST:",SST))

#To find r^2
r2<-1-(SSE/SST)
print(paste("r^2:",r2))

I<-15
J<-2
df<-I-J

#s^2
s2<-SSE/df
s<-sqrt(s2)

#Estimated standard deviation of beta1
sb<-s/sqrt(Sxx)
print(paste("Estimated standard deviation of beta1:",sb))

alpha<-0.05
t<-qt(1-alpha/2,df)

#To find confidence intervals
l<-beta1-t*sb
r<-beta1+t*sb
print(paste("Left endpoint of confidence interval:",l))
print(paste("Right endpoint of confidence interval:",r))

#To display analysis of variance and parameter estimates
model<-lm(y~x)
cat("\nParameter estimates\n")
print(summary(model))
cat("\nANOVA table:\n")
print(summary(aov(model)))
a<-predict(model)
print(paste("Predict values:"))
print(a)
print(paste("Residuals:"))
print(resid(model))
