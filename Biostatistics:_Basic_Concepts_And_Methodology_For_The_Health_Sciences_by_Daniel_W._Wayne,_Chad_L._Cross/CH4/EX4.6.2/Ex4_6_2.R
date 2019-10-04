
##Example 4.6.2 Pg 120
##Standard normal distribution P(-2.55<z<2.55)

p = pnorm(2.55,0,1) - pnorm(-2.55,0,1) #gives probability of normal dist with mean 0 and variance 1 
p

#Generates a random normal densities and plots for P(-2.55<z<2.55)
x = seq(-4,4,length=10000)
y = dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(-2.55,2.55,length=10000)
y = dnorm(x,0,1)
polygon(c(-2.55,x,2.55),c(0,y,0),col="gray")



