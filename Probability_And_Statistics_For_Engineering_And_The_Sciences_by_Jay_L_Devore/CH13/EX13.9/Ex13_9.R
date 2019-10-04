#Ex13.9, Page 548
#Answers may vary slightly due to rounding off of values

Thickness<-c(220,220,220,220,370,370,370,370,440,440,440,440,680,680,680,680,860,860,860,860)
Strength<-c(24.0,22.0,19.1,15.5,26.3,24.6,23.1,21.2,25.2,24.0,21.7,19.2,17.0,14.9,13.0,11.8,12.2,11.2,6.6,2.8)

model<-lm(Strength~Thickness+I(Thickness^2))

new<-data.frame(Thickness=500)
y_cap<-predict(model,new)
print(paste("ycap when x=500:",y_cap))

#To find confidence and prediction intervals
cat("95% CI:\n")
print(predict(model,newdata=data.frame(Thickness=500),interval="confidence"))
cat("95% PI:\n")
print(predict(model,newdata=data.frame(Thickness=500),interval="prediction"))