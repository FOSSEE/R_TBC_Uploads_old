#Ex12.7, Page 483
#Answers may vary slightly due to rounding off of values

#From Ex12.6
x<-c(125.3,98.2,201.4,147.3,145.9,124.7,112.2,120.2,161.2,178.9,159.5,145.8,75.1,151.4,144.2,125.0,198.8,132.5,159.6,110.7)
y<-c(77.9,76.8,81.5,79.8,78.2,78.3,77.5,77.0,80.1,80.2,79.9,79.0,76.7,78.2,79.5,78.1,81.5,77.0,79.0,78.6)
data1<-data.frame(x,y)

model<-lm(y~x)
Residual<-resid(model)
n<-length(Residual)

SSE<-sum(Residual^2)
print(paste("SSE:",SSE))

#To find variance(sigma^2)
s2<-SSE/(n-2)
print(paste("Estimate of variance:",s2))

#To find standard deviation(sigma)
sd<-sqrt(s2)
print(paste("Estimate of standard deviation:",sd))

#To display ANOVA table
a<-aov(model,data=data1)
cat("ANOVA table:\n")
print(summary(a))