#Ex12.13, Page 501
#Answers may vary slightly due to rounding off of values

library(ggplot2)

x<-c(8.0,15.0,16.5,20.0,20.0,27.5,30.0,30.0,35.0,38.0,40.0,45.0,50.0,50.0,55.0,55.0,59.0,65.0)
y<-c(22.8,27.2,23.7,17.1,21.5,18.6,16.1,23.4,13.4,19.5,12.4,13.2,11.4,10.3,14.1,9.7,12.0,6.8)
data1<-data.frame(x,y)

#To plot data using ggplot
ggplot(data=data1,mapping=aes(x,y))+geom_point(size=2)+geom_smooth(method=lm)

#To display linear regression model
model<-lm(y~x)
print(summary(model))

#To display analysis of variance
cat("ANOVA table:\n")
a<-aov(model,data=data1)
print(summary(a))

#To display confidence and prediction intervals
d<-data.frame(x=c(35,45))
cat("Confidence intervals:\n")
print(predict(model,newdata=d,interval="confidence",level=0.95))
cat("Prediction intervals:\n")
print(predict(model,newdata=d,interval="predict",level=0.95))