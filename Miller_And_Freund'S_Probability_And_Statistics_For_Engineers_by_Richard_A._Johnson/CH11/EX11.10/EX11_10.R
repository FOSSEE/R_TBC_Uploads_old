x<-c(2,3,6,10,15,20)
y<-c(164.7,156.1,142.5,133.8,114.6,107.1)
#a)plot of logy vs x
#the relation ship between logy and x is exponenetial curve
plot(x,log(y))
#b)Regression Equation
summary(lm(log(y)~ x))
fit=lm(log(y)~ x)
#logarithmic form is:
cat("log(y) = ",fit$coefficients[2],'x +',fit$coefficients[1])
#exponential form is:
cat("y = ",exp(5.1257),'*e^(',fit$coefficients[2],')')
#c)Using the logarithmic form which is more convenient, we predict
result<-predict(fit,data.frame(x=c(5)),interval = "confidence",level = 0.95)
result
