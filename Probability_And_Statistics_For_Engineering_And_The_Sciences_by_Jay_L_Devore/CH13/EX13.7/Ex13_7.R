#Ex13.7, Page 544

Thickness<-c(220,220,220,220,370,370,370,370,440,440,440,440,680,680,680,680,860,860,860,860)
Strength<-c(24.0,22.0,19.1,15.5,26.3,24.6,23.1,21.2,25.2,24.0,21.7,19.2,17.0,14.9,13.0,11.8,12.2,11.2,6.6,2.8)

df<-data.frame(Thickness,Strength)
cat("Regression model:\n")
relation<-lm(Strength~Thickness+I(Thickness^2))
print(summary(relation))

cat("Analysis of variance:\n")
model<-lm(Strength~poly(Thickness,2))
a<-aov(model,data=df)
print(summary(a))

#To find confidence and prediction intervals
cat("\nWhen thickness=500\n")
cat("95% CI:\n")
print(predict(relation,newdata=data.frame(Thickness=500),interval="confidence"))
cat("95% PI:\n")
print(predict(relation,newdata=data.frame(Thickness=500),interval="prediction"))

cat("\nWhen thickness=800\n")
cat("95% CI:\n")
print(predict(relation,newdata=data.frame(Thickness=800),interval="confidence"))
cat("95% PI:\n")
print(predict(relation,newdata=data.frame(Thickness=800),interval="prediction"))


