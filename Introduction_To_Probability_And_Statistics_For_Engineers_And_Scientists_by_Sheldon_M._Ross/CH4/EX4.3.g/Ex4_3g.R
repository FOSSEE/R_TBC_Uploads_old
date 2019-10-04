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

#P(0,0)
P_0_0 = .4
#P(0,1)
P_0_1 = .2
#P(1,0)
P_1_0 = .1
#P(1,1)
P_1_1 = .3

#P{Y = 1}  = P(0,1) + #P(1,1)
P_Y = P_0_1 + P_1_1

#P{X = 0|Y=1} = P(0,1)/P{Y=1}
P1 = P_0_1 / P_Y
P1

#P{X = 1|Y=1} = P(1,1)/P{Y=1}
P2 = P_1_1 / P_Y
P2