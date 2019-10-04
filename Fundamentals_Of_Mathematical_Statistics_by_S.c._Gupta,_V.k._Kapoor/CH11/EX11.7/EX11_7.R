#Page number-11.15
#Example number--11.7

obs=c(seq(1,8,1))
X=c(1,2,3,4,5,6,7,8)
Y=c(1.0,1.2,1.8,2.5,3.6,4.7,6.6,9.1)
U=log(Y)
data.frame(obs,X,Y,U,X*U,X^2)

a=matrix(c(8,36,36,204),nrow=2,ncol=2)
b=matrix(c(3.7393,22.7385),nrow=2,ncol=1)
t=solve(a,b)
t
#Taking antilog
b=0.1408
d=0.6821

#Equation-----> Y= 0.6821* (1.38)^X
