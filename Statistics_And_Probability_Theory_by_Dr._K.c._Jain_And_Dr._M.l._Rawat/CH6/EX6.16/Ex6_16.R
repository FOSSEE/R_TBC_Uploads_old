#Example 16 chapter 6 page no 254
x=seq(20,380,40)    #air velocity
y=c(0.18,0.37,0.35,0.78,0.56,0.75,1.18,1.36,1.17,1.65)   #Evaporation coefficient
fit<-lm(y~poly(x,1,raw = "True"))
plot(x,y,main = "scatterplot")
line1= fit$coefficient[2]*x +fit$coefficient[1]
lines(x,line1,col="red")
cat("y =",fit$coefficient[2],"x +",fit$coefficient[1])
y=predict(fit,data.frame(x=190))
cat(y,"mm^2/sec is evaporation coeff for air velocity 190 cm/sec")
