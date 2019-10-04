#Normal distribution calculation with range.
x <- seq(600,1600,length= 200)
y <- dnorm(x, mean = 1026, sd= 209)
plot(x,y, type = "l",lwd = 2 ,col="blue")
x <- seq(720,820,length= 200)
y <- dnorm(x, mean = 1026, sd= 209)
polygon(c(720,x,820),c(0,y,0),col="red")