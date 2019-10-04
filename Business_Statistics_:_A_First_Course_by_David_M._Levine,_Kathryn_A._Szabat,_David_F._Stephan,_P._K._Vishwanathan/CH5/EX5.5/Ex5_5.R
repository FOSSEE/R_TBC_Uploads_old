#function ppoise() is used to calculate Poisson Probabilities
#P(X=0 | lambda =2.5)
x<-ppois(0, lambda=2.5)
round(x,digits=4)
x
#P(X=0 | lambda=2.5)
y<-ppois(0, lambda=2.5,lower=FALSE)
round(y,digits=4)
y