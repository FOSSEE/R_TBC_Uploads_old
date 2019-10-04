#Example 4.13.d, Page 154
#The answers may slightly vary due to rounding off of values

#P(-0.38<=Z<=1.25)
#Variable to store result(1-P(Z<=1.25))
a<-pnorm(1.25,0,1)-pnorm(-0.38,0,1)
print(paste("The standard normal probability is", a))

#To plot the standard normal distribution bell curve
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.4), xlab = "z", ylab="f(z)",lwd=2, col="black")
z1 = 1.25
z2 = -0.38
pnorm(z)
x = c(z2, seq(z2, z1, by=.001), z1)
#plot(x)
y = c(0, dnorm(seq(z2, z1, by=.001)), 0)
#plot(y)
polygon(x, y, col="red")