m=25226
mu=24672
s=3251
n=35
c=round(qnorm(0.995),2)
z=round((m-mu)/(s/sqrt(n)),2)
x=seq(-4,4,length=200)
y=dnorm(x)
plot(x,y,type="l", lwd=2, col="green")
x=seq(z,z,length=100)
y=dnorm(x)
polygon(c(z,x,z),c(0,y,0),col="black")
x=seq(-c,-4,length=100)
y=dnorm(x)
polygon(c(-c,x,-4),c(0,y,0),col="yellow")
x=seq(c,4,length=100)
y=dnorm(x)
polygon(c(c,x,4),c(0,y,0),col="yellow")
#values are compared on the plot