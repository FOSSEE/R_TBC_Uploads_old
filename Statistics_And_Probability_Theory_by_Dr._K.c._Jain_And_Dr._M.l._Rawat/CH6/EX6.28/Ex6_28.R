#Example 28 chapter 6 page no. 276
n=5
x=c(1:n)
y=c(2,5,3,8,7)
fit<-lm(y~poly(x,1,raw = "True"))
yi=predict(fit,data.frame(x))
error=sqrt(sum((y-yi)^2)/n)
cat("error of estimates",error)
