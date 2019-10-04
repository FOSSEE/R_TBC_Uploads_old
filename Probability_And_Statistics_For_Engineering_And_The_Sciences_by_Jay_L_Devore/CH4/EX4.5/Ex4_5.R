#Example 4.5, Page 141
#The answers may slightly vary due to rounding off of values

#Taking upper limit as 1000 instead of infinity
integrand<-function(x) {.15*exp(-.15*(x-.5))}
#f(x)>=0
#To show that integral from negative infinity to infinity is 1
c<-integrate(integrand,lower=0.5,upper=Inf)
#To access the list of values of integrate by name
print(paste("Value of integral is",c$value))

#To find P(X<5)
d<-integrate(integrand,lower=0.5,upper=5)
print(paste("Thus, probability that headway time is atmost 5 sec:",d$value))

