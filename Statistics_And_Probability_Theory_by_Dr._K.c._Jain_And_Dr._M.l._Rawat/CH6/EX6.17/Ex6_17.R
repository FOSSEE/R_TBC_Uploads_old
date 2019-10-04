#Example 17 chapter 6 page no 263
x=c(1:9)
y=c(9,8,10,12,11,13,14,16,15)
fit<-lm(y~poly(x,1,raw = "True"))
plot(x,y,main = "scatterplot")
line1= fit$coefficient[2]*x +fit$coefficient[1]
lines(x,line1,col="red")
cat("y =",fit$coefficient[2],"x +",fit$coefficient[1])
y=predict(fit,data.frame(x=6.2))
cat(y,"is the estimated value for x=6.2")
