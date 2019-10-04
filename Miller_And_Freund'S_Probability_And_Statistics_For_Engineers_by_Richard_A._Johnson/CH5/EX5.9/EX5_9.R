mu=4.6
sigma=1.21
X=log(0.0015)
value=(X+(mu))/sigma**0.5
value
pnorm(value)
cord.x <- c(-3,seq(-3,value,0.01),value) 
cord.y <- c(0,dnorm(seq(-3,value,0.01)),0) 
curve(dnorm(x,0,1),xlim=c(-3,3),main='Standard Normal') 
polygon(cord.x,cord.y,col='skyblue')
print('The Standard Normal Pobabability that obtain is smaller' )

