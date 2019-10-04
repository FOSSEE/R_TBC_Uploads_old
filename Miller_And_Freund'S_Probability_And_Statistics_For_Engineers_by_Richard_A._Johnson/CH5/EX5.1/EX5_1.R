library(distr)#PDF
#f(x)=2e^-2x for x >0
f=function(x) 2*exp(1)^(-2*x)
#P(1<X<3)
integrate(f, lower = 1, upper = 3)
#P(X>0.5)
integrate(f, lower = 0.5, upper = Inf)
