#Example 14 chapter 6 page no 254
x=seq(1,4.0,0.5)
y=c(1.1,1.3,1.6,2.6,2.7,3.4,4.1)
fit<-lm(y~poly(x,2,raw = "True"))
plot(x,y,main = "scatterplot")
parabola=fit$coefficient[3]*x^2 + fit$coefficient[2]*x +fit$coefficient[1]
lines(x,parabola,col="red")
cat("y =",fit$coefficient[3],"x^2 +",fit$coefficient[2],"x +",fit$coefficient[1])
 