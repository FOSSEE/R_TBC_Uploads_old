#Electric current(Pg no. 115)

# Expectation
integrand <- function(x) {5*x}
P = integrate(integrand,lower = 4.9,upper = 5.1)
P

# Variance
integrand <- function(x) {5*(x-10)^2}
Q = integrate(integrand,lower = 4.9,upper = 5.1)
Q

#The answer provided in textbook is wrong