#Page number--5.21
#Example number--5.19

#Part (i)
integrand=function(x){100/x^2}
a=integrate(integrand,lower=100,upper=150)
a
#Probability that tubes be replaced in first 150 hrs.
p=(1/3)^3

#Part (ii)
#Probability that none of tubes be replaced in first 150 hrs.
p=(1-1/3)^3

#Part (iii)
#Probability that tube last more than 150 but less than 200 hrs.
integrand=function(x){100/x^2}
a1=integrate(integrand,lower=150,upper=200)
a1
integrand=function(x){100/x^2}
a2=integrate(integrand,lower=150,upper=Inf)
a2
#a1=0.1666667  a2=0.6666667
p=0.1666667/0.6666667

#Part (iv)
#Maximum number of tubes
n=log(0.5)/log(0.6667)
n



