#Normal Distribution Calculations
x <- seq(600,1600,length= 200)
y <- dnorm(x, mean = 1026, sd= 209)
plot(x,y, type = "l",lwd = 2 ,col="blue")
x <- seq(820,1600,length= 200)
y <- dnorm(x, mean = 1026, sd= 209)
polygon(c(820,x,1600),c(0,y,0),col="red")
