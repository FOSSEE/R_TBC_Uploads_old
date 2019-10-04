#Page number--9.15
#Example number--9.3

Mean=12
s.d=4			  #Standard Deviation

#Part (i)
pnorm(Inf,12,4)-pnorm(20,12,4)
x=seq(0,30,length=200)
y=dnorm(x,12,4)
plot(x,y,type="l")
x=seq(20,25,length=100)
y=dnorm(x,12,4)
polygon(c(20,x,25),c(0,y,0),col="red")

#Part (ii)
p=1-(pnorm(Inf,12,4)-pnorm(20,12,4))
p

#Part (iii)
pnorm(12,12,4)-pnorm(0,12,4)
x=seq(0,30,length=200)
y=dnorm(x,12,4)
plot(x,y,type="l")
x=seq(0,12,length=100)
y=dnorm(x,12,4)
polygon(c(0,x,12),c(0,y,0),col="red")

#Part (a)
#Taking value of z1 from Normal Tables
z1=0.71
a=12+4*z1
a
#Part (b)
#Taking value of z1 from Normal Tables
z1=0.67
x1=12+4*z1
x1
x0=12-4*z1
x0