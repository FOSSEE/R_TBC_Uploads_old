##Example 4.6.1 Pg.119
##Standard Normal Distribution
## Find P(z<2)

p = pnorm(2,0,1) #gives probability of normal dist with mean 0 and variance 1 less than 2
p

#Generates a random normal densities and plots for P(z<2)
x = seq(-4,4,length=10000)
y = dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(-4,2,length=10000)
y = dnorm(x,0,1)
polygon(c(-4,x,2),c(0,y,0),col="gray")
