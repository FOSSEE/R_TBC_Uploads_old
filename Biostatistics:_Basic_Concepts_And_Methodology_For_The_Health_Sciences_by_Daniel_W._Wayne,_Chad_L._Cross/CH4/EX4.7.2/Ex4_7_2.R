##Example 4.7.2 Pg 125
##Normal distribution P(292<X<649)

mean = 491; sd=119
p = pnorm(649,mean,sd) - pnorm(292,mean,sd) 
p

#Generates a random normal densities and plots for P(0.84<z<2.45)
x = seq(0,1000,length=10000)
y = dnorm(x,mean,sd)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(292,649,length=10000)
y = dnorm(x,mean,sd)
polygon(c(292,x,649),c(0,y,0),col="gray")



