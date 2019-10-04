#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)


integrand <- function(x) {(4*(x) - 2*(x^2))}
R = integrate(integrand,lower = 0,upper = 2)
C = 1/R$value
C

# P {X>1}
integrand <- function(x) {C*(4*(x) - 2*(x^2))}
P = integrate(integrand,lower = 1,upper = 2)
P