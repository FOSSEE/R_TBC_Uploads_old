#Page number-11.14
#Example number--11.6

obs=c(seq(1,10,1))
X=c(1,1,2,2,3,3,4,5,6,7)
Y=c(2,7,7,10,8,12,10,14,11,14)
data.frame(obs,X,Y,X^2,X^3,X^4,X*Y,X^2*Y)

a=matrix(c(10,34,154,34,154,820,154,820,4774),nrow=3,ncol=3)
b=matrix(c(95,377,1849),nrow=3,ncol=1)
t=solve(a,b)
t
#From the above, we can get the equation 
#Equation---> Y= 1.80 + 3.48*X - 0.2689*X^2



