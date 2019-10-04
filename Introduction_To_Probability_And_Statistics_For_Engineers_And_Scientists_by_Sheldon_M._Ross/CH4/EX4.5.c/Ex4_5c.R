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


# P {X}
P0 = .2
P1 = .5
P2 = .3
# E[X^2] = X0^2*P0 + X1^2*P1 + X2^2*P2
E = (0^2)*P0 + (1^2)*P1 + (2^2)*P2
E