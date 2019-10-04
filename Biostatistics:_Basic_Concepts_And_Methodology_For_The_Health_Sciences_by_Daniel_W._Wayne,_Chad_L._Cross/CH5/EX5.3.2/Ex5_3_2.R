##Example 5.3.2 Pg.142
##Sampling distribution of mean

xbar = 190 ;  mu = 185.6 ; sd = 12.7 ; n=10

z = (xbar-mu)/(sd/sqrt(n))
z

#Generates a random normal densities and plots for P(0.84<z<2.45)
x = seq(140,225,length=10000)
y = dnorm(x,mu,sd)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(190,250,length=10000)
y = dnorm(x,mu,sd)
polygon(c(190,x,250),c(0,y,0),col="gray")


