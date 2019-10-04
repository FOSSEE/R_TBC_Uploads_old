#weibull distribution
scale=0.5
#mean lifetime
mu=(0.1)**(-2)*factorial((1+1/0.5)-1)
mu
#P(X>300)
g=function(x)(0.05)*x^(-0.5)*exp(1)^(-0.1*x^scale)
integrate(g, lower = 300, upper = Inf)

