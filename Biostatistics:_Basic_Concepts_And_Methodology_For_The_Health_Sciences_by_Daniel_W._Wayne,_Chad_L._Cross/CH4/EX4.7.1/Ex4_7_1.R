##Example 4.7.1 Pg.123
##Normal distribution P(x<3)

mean = 5.4; sd=1.3
p = pnorm(3,mean,sd) #gives distribution of normal with mean 5.4 and sd 1.3 
p

#Generates a random normal densities and plots for P(z<2)
x = seq(0,10,length=10000)
y = dnorm(x,mean,sd)
plot(x,y,type="l",lwd=2,col="red")  
x = seq(0,3,length=10000)
y = dnorm(x,mean,sd)
polygon(c(0,x,3),c(0,y,0),col="gray")



