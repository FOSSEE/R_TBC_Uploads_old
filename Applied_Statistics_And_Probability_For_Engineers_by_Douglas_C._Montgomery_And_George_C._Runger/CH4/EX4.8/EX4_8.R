#Hole diameter(Pg no. 115)

# Expectation
integrand <- function(x) {x*20*(exp(-20*(x-12.5)))}
u = integrate(integrand,lower = 12.5,upper = Inf)
u

# Variance
integrand <- function(x) {((x - 12.55)^2)*20*(exp(-20*(x-12.5)))}
v = integrate(integrand,lower = 12.5,upper = Inf)
v

sd = sqrt(v$value) #Standard deviation
sd
#The answer may slightly vary due to rounding off values