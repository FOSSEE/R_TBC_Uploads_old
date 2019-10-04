#Ex13.15, Page 564
#Answers may vary slightly due to rounding off of values

x1<-c(61,175,111,124,130,173,169,169,160,244,257,333,199)
x2<-c(13,21,24,23,64,38,33,61,39,71,112,88,54)
y<-c(4,18,14,18,26,26,21,30,28,36,65,62,40)
data1<-data.frame(x1,x2,y)

model<-lm(y~(x1+x2))
print(summary(model))

new<-data.frame(x1=160,x2=39)
y_cap<-predict(model,new)
print(paste("y_cap:",y_cap))

cat("\n99% CI:\n")
print(confint(model,level=0.99))

#To find confidence and prediction intervals
cat("95% CI:\n")
print(predict(model,new,interval="confidence"))
cat("95% PI:\n")
print(predict(model,new,interval="prediction"))



