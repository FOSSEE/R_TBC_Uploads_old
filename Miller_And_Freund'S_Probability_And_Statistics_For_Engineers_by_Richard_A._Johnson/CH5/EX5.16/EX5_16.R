data<-c(0.894,0.991,0.061,0.186,0.311,0.817,2.267,0.091,0.139,0.083,
        0.235,0.424,0.216,0.579,0.429,0.612,0.143,0.055,0.752,0.188,
        0.071,0.195,0.082,1.653,2.010,0.158,0.527,1.033,2.863,0.365,
        0.459,0.431,0.092,0.830,1.718,0.099,0.162,0.076,0.107,0.278,
        0.100,0.919,0.900,0.093,0.041,0.712,0.994,0.149,0.866,0.054)
#decay Time is represented by histogram
h<-hist(data, breaks=10, col="red",xlab = "Millisecond" ,prob = TRUE) 
xfit<-seq(0,max(data),length=50) 
yfit<-dnorm(xfit,mean=mean(data),sd=sd(data)) 
yfit <- yfit*diff(h$mids[1:2])*length(data) 
lines(xfit, yfit, col="blue", lwd=2)
