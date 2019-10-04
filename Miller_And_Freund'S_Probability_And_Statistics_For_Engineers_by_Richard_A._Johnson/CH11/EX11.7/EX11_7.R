#Peak load
y1<-c(8.6,8.9,9.1)
y2<-c(9.0,9.3,9.4)
y3<-c( 9.5,9.8,9.8)
y4<-c(10.2,10.2,10.3)
x<-c(0,3,6,12)#Prestrain
x=c(0,0,0,3,3,3,6,6,6,12,12,12)
y=c(y1,y2,y3,y4)
#a)
summary(lm(y~x))
summary(aov(y~x))
plot(x,y)
message("the P-value for the one-sided test is less than 0.0000 when rounded
down. This is very strong evidence that prestressing results in stronger
material.")
#b)
fit<-lm(y~x)
#The estimated regression line is
cat("y = ",fit$coefficients[[1]]," + ",fit$coefficients[[2]],"x")
x=1# percent prestrain
y=data.frame(predict(fit,data.frame(x=c(1)),interval = "confidence"))
message(y$fit," kN")
#The 95% confidence interval becomes
y
message("We are 95% confident that mean strength is between 8.860385 and 9.182154 kN for all
alloy sheets that could undergo a prestrain of 1 percent")
#c)Note:-This is Part (b) of T.B
x=9# percent prestrain
y=data.frame(predict(fit,data.frame(x=c(9)),interval = "confidence"))
message(y$fit," kN")
#The 95% confidence interval becomes
y
message("We are 95% confident that mean strength is between 9.79 and 10.09 kN for all
alloy sheets that could undergo a prestrain of 9 percent")

#d)Note:-This is Part (c) of T.B
cat(", there are no outliers in the residuals and the assumption of 
normal errors appears reasonable. We can rely upon the
statistical conclusions above")