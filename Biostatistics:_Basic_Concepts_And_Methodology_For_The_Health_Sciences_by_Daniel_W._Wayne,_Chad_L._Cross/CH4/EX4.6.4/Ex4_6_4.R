##Example 4.6.4 Pg.121
##Standard Normal Distribution
## Find P(z>=2.71)

p = 1 - pnorm(2.71,0,1) #gives probability of normal dist with mean 0 and variance 1 less than 2
p

#Generates a random normal densities and plots for P(z<2)
x = seq(-4,4,length=10000)
y = dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(2.71,4,length=10000)
y = dnorm(x,0,1)
polygon(c(2.71,x,4),c(0,y,0),col="gray")



