#Ex12.4, Page 479
#Answers may slightly vary due to rounding off of values

x<-c(132.0,129.0,120.0,113.2,105.0,92.0,84.0,83.2,88.4,59.0,80.0,81.5,71.0,69.2)
y<-c(46.0,48.0,51.0,52.1,54.0,52.0,59.0,58.7,61.6,64.0,61.4,54.6,58.8,58.0)
data1<-data.frame(x,y)

#To display regression model
model<-lm(y~x,data=data1)
cat("Regression model of data:\n")
a<-summary(model)
print(a)

#To display the scatterplot 
plot(x,y,main="Scatterplot with least square line superimposed",xlab="iod val",ylab="cet num")
abline(a$coefficients[1],a$coefficients[2])