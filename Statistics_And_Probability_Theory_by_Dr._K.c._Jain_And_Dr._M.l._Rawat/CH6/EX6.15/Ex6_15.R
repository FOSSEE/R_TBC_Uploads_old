#Example 15 chapter 6 page no 257
x=c(-5:4)
y=c(45,52,54,63,62,68,75,76,92,88)
fit<-lm(y~poly(x,1,raw = "True"))
plot(x,y,main = "scatterplot")
best_line=fit$coefficient[2]*x + fit$coefficient[1]
lines(x,best_line,col="red")
cat("y =",fit$coefficient[2],"x +",fit$coefficient[1])
