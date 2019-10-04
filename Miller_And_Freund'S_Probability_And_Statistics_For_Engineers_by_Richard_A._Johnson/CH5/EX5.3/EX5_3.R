#f(x)=k*xe^-4*x^2,find K x>0
f=function(x) x*exp(1)^(-4*x^2)
k=1/(integrate(f, lower = 0, upper = Inf))$value
message("Value of K is",k)

