#Ex12.9, Page 486
#Answers may vary slightly due to rounding off of values

#From Ex12.4
x<-c(132.0,129.0,120.0,113.2,105.0,92.0,84.0,83.2,88.4,59.0,80.0,81.5,71.0,69.2)
y<-c(46.0,48.0,51.0,52.1,54.0,52.0,59.0,58.7,61.6,64.0,61.4,54.6,58.8,58.0)
data1<-data.frame(x,y)

n<-14
beta0<-75.212432
beta1<-(-0.20938742)
yi<-779.2
xiyi<-71347.30
yi2<-43745.22

#To find SST and SSE
SST<-yi2-(yi^2)/n
print(paste("SST:",SST))
SSE<-yi2-beta0*yi-beta1*xiyi
print(paste("SSE:",SSE))

#Coefficient of determination
r2<-1-(SSE/SST)
print(paste("Coefficient of determination:",r2))

#To create regression model using ANOVA table
a<-lm(y~x)
print(summary(a))
a1<-aov(a,data=data1)
print(summary(a1))

