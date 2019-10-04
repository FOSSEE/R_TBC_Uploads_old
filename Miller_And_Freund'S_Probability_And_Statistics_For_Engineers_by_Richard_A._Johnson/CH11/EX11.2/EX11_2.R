#ormal Equation of precious example is,
x<-c(20,60,100,140,180,220,260,300,340,380)#AirVelocity(cm/sec)
y<-c(0.18,0.37,0.35,0.78,0.56,0.75,1.18,1.36,1.17,1.650)#Evaporation coefficent(mm^2/sec)
table<-data.frame(x,y)
fit<-lm(y~x)
plot(x,y)
abline(fit)
message("regression equation is: ",fit$coefficients[[2]],'x + ',fit$coefficients[[1]])
summary(aov(y~x))
cat("from table SSE is 0.20238")
print("For x = 190, we predict that the evaporation coefficient will be")
Y<-data.frame(predict(fit,data.frame(x=c(190)),interval = "confidence"))
Y$fit
