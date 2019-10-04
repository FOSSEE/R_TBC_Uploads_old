#least squares estimates and sum of squares error for the cooling rate
x<-c(0,1,2,2,4,4,5,6)
y<-c(25,20,30,40,45,50,60,50)
fit<-lm(y~x)
fit
#the least squares line is
message("y=",fit$coefficients[[1]],"+",fit$coefficients[[2]],"x")
anova(fit)
cat("forom Table  the SSE is 270")

