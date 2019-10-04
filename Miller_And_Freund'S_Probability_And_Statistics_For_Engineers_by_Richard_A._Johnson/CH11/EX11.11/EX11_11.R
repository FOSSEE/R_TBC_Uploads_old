x<-c(0,1,2,3,4,5,6,7,8)#Amount of varnish additive(grams)
y<-c(12,10.5,10,8,7,8,7.5,8.5,9.0)#Drying Time
#a)Scatter plot
plot(x,y)
#b)Fit a second-degree polynomial
fit<-lm(y~x+I(x^2))
fit
#Polynomial equestion is
cat("y = ",fit$coefficients[[1]],"",fit$coefficients[[2]],"x + ",fit$coefficients[[3]],"x^2")
summary(fit)
lines(smooth.spline(x,predict(fit)),col='blue',lwd=3)
#c)drying time of the varnish when 6.5 grams of the additive is being used
predict(fit,data.frame(x=c(6.5)),interval = "confidence")
