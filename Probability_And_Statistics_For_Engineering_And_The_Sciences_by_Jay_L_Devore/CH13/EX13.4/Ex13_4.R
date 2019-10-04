#Ex13.4, Page 534
#Answers may vary slightly due to rounding off of values

x<-c(2,10,20,30,40,50,60,70,80,90,100)
y<-c(408,274,196,137,90,78,51,40,30,22,15)
y_dash<-log(y,base=exp(1))
m1<-lm(y~x)
m2<-lm(y_dash~x)
ei_std1<-rstandard(m1)
ei_std2<-rstandard(m2)

par(mfrow=c(2,2))
plot(x,y,main="Scatterplot")
abline(m1)
plot(x,ei_std1,xlab="x",ylab="e*",main="Residual plot from linear regression for the data")
abline(0,0)

#To find the coefficients
beta0<-m2$coefficients[1]
beta1<-round(m2$coefficients[2],digits=4)

y_cap<-(exp(1)^(beta0))*(exp(1)^(beta1*x))

df<-data.frame(x,y,y_dash,y_cap)
print(df)

plot(x,ei_std2,ylab="e*",main="Standardized residuals(after transforming) vs. x")
abline(0,0)
plot(y,y_cap,main="ycap vs. y")
abline(lm(y_cap~y))


