#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)
#install.packages("combinat")
library(combinat)
library(discreteRV)
require(pracma)
library(cubature)


integrand <- function(x) {x / 1.5}
R = integrate(integrand,lower = 0,upper = 1.5)
R