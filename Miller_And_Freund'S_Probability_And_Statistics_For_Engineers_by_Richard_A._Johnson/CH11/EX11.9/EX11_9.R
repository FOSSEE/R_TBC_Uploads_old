x0 = 18
y1<-c(8.6,8.9,9.1)
y2<-c(9.0,9.3,9.4)
y3<-c( 9.5,9.8,9.8)
y4<-c(10.2,10.2,10.3)
x<-c(0,3,6,12)
y<-c(mean(y1),mean(y2),mean(y3),mean(y4))
predict(lm(y~x),data.frame(x=c(18)),interval = "confidence",level = 0.95)
cat("We are 95% confident that the observed value of peak load for this
new sheet of aluminum lies between 10.43 and 11.51 kN")