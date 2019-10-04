#Hole diameter(Pg no. 110)

# P {X>12.60}
integrand <- function(x) {20*(exp(-20*(x-12.5)))}
P = integrate(integrand,lower = 12.6,upper = Inf)
P

# P {12.50<X<12.60}
integrand <- function(x) {20*(exp(-20*(x-12.5)))}
Q = integrate(integrand,lower = 12.5,upper = 12.6)
Q

#The answer may slightly vary due to rounding off values