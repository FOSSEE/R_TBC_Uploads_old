#Example 4.13.b, Page 154
#The answers may slightly vary due to rounding off of values

#P(Z>1.25)
#Variable to store result(1-P(Z<=1.25))
a=1-pnorm(1.25,0,1)
print(paste("The standard normal probability is", a))


#To plot the standard normal distribution bell curve
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.4), xlab = "z", ylab="f(z)",lwd=2, col="black")
z = 1.25
pnorm(z)
x = c(z, seq(z, 3, by=.001), 3)
#plot(x)
y = c(0, dnorm(seq(z, 3, by=.001)), 0)
#plot(y)
polygon(x, y, col="red")

