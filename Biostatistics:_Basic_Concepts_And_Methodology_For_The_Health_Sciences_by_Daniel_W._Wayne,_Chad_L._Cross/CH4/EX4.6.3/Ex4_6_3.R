##Example 4.6.3 Pg 121
##Standard normal distribution P(-2.74<z<1.53)

p = pnorm(1.53,0,1) - pnorm(-2.74,0,1) #gives probability of normal dist with mean 0 and variance 1 
p

#Generates a random normal densities and plots for P(-2.55<z<2.55)
x = seq(-4,4,length=10000)
y = dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(-2.74,1.53,length=10000)
y = dnorm(x,0,1)
polygon(c(-2.74,x,1.53),c(0,y,0),col="gray")


