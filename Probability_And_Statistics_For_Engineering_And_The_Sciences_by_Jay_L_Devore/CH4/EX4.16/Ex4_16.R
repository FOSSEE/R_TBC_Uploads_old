#Ex4.16, Page 158
#Answers may slightly vary due to rounding off of values

#P(1.00<=X<=1.75)
#Mean=>1.25, Standard deviation=>0.46

title(main="P(1.00<=X<=1.75)")
a<-pnorm(1.00,mean=1.25,sd=0.46)
b<-pnorm(1.75,mean=1.25,sd=0.46)
c<-b-a
print(paste("P(1.00<=X<=1.75)=",c))

#To plot the standard normal distribution bell curve
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.4), xlab = "z", ylab="f(z)",lwd=2, col="black")
z<-1.75
# Cumulative density function of the standard normal distribution
pnorm(z)
x<-c(1.00, seq(1.00, z, by=.001), z)
#plot(x)
y<-c(0, dnorm(seq(1.00, z, by=.001)), 0)
#plot(y)
polygon(x, y, col="red")

#P(X>2)
d<-1-pnorm(2,mean=1.25,sd=0.46)
print(paste("P(X>2)=",d))
