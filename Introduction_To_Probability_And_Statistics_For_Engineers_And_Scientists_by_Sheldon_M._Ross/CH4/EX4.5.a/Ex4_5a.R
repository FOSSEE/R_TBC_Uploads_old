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
PY0 = .2
PY1 = .5
PY2 = .3
# E[X^2] = E[Y] = Y0 * PY0 + Y1 * PY1 + Y2 * PY0
E = 0 * PY0 + 1 * PY1 + 4 * PY2
E