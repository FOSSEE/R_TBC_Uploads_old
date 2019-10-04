x1=43260
m=42000
s=5230
n=30
c=round(qnorm(0.951),2)
z=round((x1-m)/(s/sqrt(n)),2)
f=z
x=seq(-4,4,length=200)
y=dnorm(x)
plot(x,y,type="l", lwd=2, col="green")
if(z<c)
{ f=c
  x=seq(z,z,length=100)
  y=dnorm(x)
  polygon(c(z,x,z),c(0,y,0),col="black")}
x=seq(f,4,length=100)
y=dnorm(x)
polygon(c(f,x,4),c(0,y,0),col="gray")
#values are compared on the plot