#Ex13.10, Page 549
#Answers may vary slightly due to rounding off of values

x<-c(280,284,292,295,298,305,308,315)
x_dash<-c(-17.13,-13.13,-5.13,-2.13,0.87,7.87,10.87,17.87)
y<-c(770,800,840,810,735,640,590,560)
df<-data.frame(x,x_dash,y)

#To find estimated coefficients and standard deviations using original model
m1<-lm(y~x+I(x^2))
print(summary(m1))
Estimate1<-c(NULL)
Estimated_SD1<-c(NULL)
for(i in 1:3){
  Estimate1[i]<-m1$coefficients[i]
  Estimated_SD1[i]<-coef(summary(m1))[,"Std. Error"][i]
}
cat("Estimated coefficients and standard deviations using original model\n")
Parameter1<-c("beta0","beta1","beta2")
df1<-data.frame(Parameter1,Estimate1,Estimated_SD1)
print(df1)

#To find estimated coefficients and standard deviations using centered model
Estimate2<-c(NULL)
Estimated_SD2<-c(NULL)
m2<-lm(y~x_dash+I(x_dash^2))
print(summary(m2))
for(i in 1:3){
  Estimate2[i]<-m2$coefficients[i]
  Estimated_SD2[i]<-coef(summary(m2))[,"Std. Error"][i]
}
cat("Estimated coefficients and standard deviations using centered model\n")
Parameter2<-c("beta0*","beta1*","beta2*")
df2<-data.frame(Parameter2,Estimate2,Estimated_SD2)
print(df2)