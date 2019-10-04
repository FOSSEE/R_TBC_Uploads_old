#Example 22 chapter 6 page no 271
x=c(0:8)
y=c(12,10.5,10,8,7,8,7.5,8.5,9)
fit<-lm(y~poly(x,2,raw = "True"))
plot(x,y,main = "scatterplot")
parabola=fit$coefficient[3]*x^2 + fit$coefficient[2]*x +fit$coefficient[1]
lines(x,parabola,col="red")
cat("y =",fit$coefficient[3],"x^2 +",fit$coefficient[2],"x +",fit$coefficient[1])
y=predict(fit,data.frame(x=6.5))
cat(y,"predicted drying time in hours for x=6.5gms")
