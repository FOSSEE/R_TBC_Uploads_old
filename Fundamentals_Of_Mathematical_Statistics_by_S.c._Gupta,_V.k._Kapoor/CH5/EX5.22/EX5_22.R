#Page number--5.24
#Example number--5.22

#Part (i)
#P(X<=10)
integrand=function(x){1/20*exp(-x/20)}
a=integrate(integrand,lower=0,upper=10)
a

#Part (ii)
#P(16<=X<=24)
integrand=function(x){1/20*exp(-x/20)}
a1=integrate(integrand,lower=16,upper=24)
a1

#Part (iii)
#P(X>=30)
integrand=function(x){1/20*exp(-x/20)}
a3=integrate(integrand,lower=30,upper=Inf)
a3



