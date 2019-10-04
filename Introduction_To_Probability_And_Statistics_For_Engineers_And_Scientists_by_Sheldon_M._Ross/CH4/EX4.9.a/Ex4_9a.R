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


# Markov
# P {X > 75}
meanX = 50
P = meanX / 75
P

#Chebyshev
# P {|X - 50| > = 10 } < = (SigmaX^2 / 10^2)
VarX = 25
P = 1 - (VarX / 10^2)
P