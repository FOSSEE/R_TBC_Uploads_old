#Example 13 chapter 6 page no 253
x=c(0:4)
y=c(1,1.8,1.3,2.5,6.3)
fit<-lm(y~poly(x,2,raw = "True"))
plot(x,y,main = "scatterplot")
parabola=fit$coefficient[3]*x^2 + fit$coefficient[2]*x +fit$coefficient[1]
lines(x,parabola,col="red")
cat("y =",fit$coefficient[3],"x^2 +",fit$coefficient[2],"x +",fit$coefficient[1])
