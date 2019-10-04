#Page number--9.16
#Example number--9.4

Mean=30
s.d=5			  #Standard Deviation

#Part (i)
pnorm(40,30,5)-pnorm(26,30,5)
x=seq(0,60,length=200)
y=dnorm(x,30,5)
plot(x,y,type="l")
x=seq(26,40,length=100)
y=dnorm(x,30,5)
polygon(c(26,x,40),c(0,y,0),col="red")

#Part (ii)
pnorm(Inf,30,5)-pnorm(45,30,5)
x=seq(0,50,length=200)
y=dnorm(x,30,5)
plot(x,y,type="l")
x=seq(45,50,length=100)
y=dnorm(x,30,5)
polygon(c(45,x,50),c(0,y,0),col="red")

#Part (iii)
#P(|X-30|>5)=1-P(|X-30|<=5)
P=1-2*0.3413
P