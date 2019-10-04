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

#P{G=1} = 0.3875
C = 0.3875
#P{B=0|G=1}=((P{B=0,G=1})/(P{G=1}))
P = 0.1/C
P
#P{B=1|G=1}
P  = .175/C
P
#P{B=2|G=1}
P = .1125/C
P
#P{B=3|G=1}
P = 0
P