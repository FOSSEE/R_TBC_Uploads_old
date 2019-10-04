f=function(x) 3*exp(1)^(-3*x)
#Assuming that the arrival follow possion process with alpha=3 and beta=1/3
#a)less then 5 min
integrate(f,lower = 0,upper = 1/12)
#b)at least 45 min
integrate(f,lower = 3/4,upper = Inf)
