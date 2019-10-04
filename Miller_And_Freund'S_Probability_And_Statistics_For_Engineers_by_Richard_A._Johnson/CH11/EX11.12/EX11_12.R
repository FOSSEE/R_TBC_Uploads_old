y<-c(41,49,69,65,40,50,58,57,31,36,44,57,19,31,33,43)
x1<-c(1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4)
x2<-c(5,5,5,5,10,10,10,10,15,15,15,15,20,20,20,20)
fit<-lm(y~x1+x2)
summary(fit)
anova(lm(y~x1+x2))
print("The least squares regression plane is")
cat("Y=",fit$coefficients[[1]],'+',fit$coefficients[[2]],'x',fit$coefficients[[3]],'x^2')
cat("This equation estimates that the average number of twists required to break a
bar increases by 7.78 if the percent of element A is increased by 1% and x2
remains fixed.")

#For x1=2.5 and x2=12
data<-data.frame(predict(fit,data.frame(x1=c(2.5),x2=c(12)),interval ="confidence"))
data$fit
