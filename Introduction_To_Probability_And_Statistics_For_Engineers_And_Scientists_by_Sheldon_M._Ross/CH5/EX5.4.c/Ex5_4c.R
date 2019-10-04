I0 = 10^-6
a = 5
integrand <- function(x) {0.5*exp(a*x)}
R = integrate(integrand,lower = 1,upper = 3)
(I0*R$value)-I0