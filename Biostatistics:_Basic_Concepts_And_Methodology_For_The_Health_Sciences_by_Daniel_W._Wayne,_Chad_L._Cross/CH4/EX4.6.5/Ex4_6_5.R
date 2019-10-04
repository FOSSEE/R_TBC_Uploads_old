##Example 4.6.5 Pg 122
##Standard normal distribution P(0.84<z<2.45)

p = pnorm(2.45,0,1) - pnorm(0.84,0,1) #gives probability of normal dist with mean 0 and variance 1 
p

#Generates a random normal densities and plots for P(0.84<z<2.45)
x = seq(-4,4,length=10000)
y = dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(0.84,2.45,length=10000)
y = dnorm(x,0,1)
polygon(c(0.84,x,2.45),c(0,y,0),col="gray")



