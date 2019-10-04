#Page number--9.18
#Example number--9.7

Mean=1000
s.d=200			  #Standard Deviation

#Part (i)
P1=pnorm(800,1000,200)
sprintf("Probability that bulb fail in less than 800 hrs.: %f",P1)
#Total number of bulbs=10000
sprintf("Expected number of bulb fail in less than 800 hrs.: %f",round(10000*P1))

#Part(ii)
P2=pnorm(1200,1000,200)-pnorm(800,1000,200)
sprintf("Expected number of bulb fail in 800-1200hrs.: %f",as.integer(10000*P2))
x=seq(0,2000,length=200)
y=dnorm(x,1000,200)
plot(x,y,type="l")
x=seq(800,1200,length=100)
y=dnorm(x,1000,200)
polygon(c(800,x,1200),c(0,y,0),col="red")
#Part (a)
#Taking value of z1 from Normal Tables
z1=1.28
x1=1000-200*z1
x1
#Part (b)
#Taking value of z1 from Normal Tables
z2=1.28
x2=1000+200*z1
x2