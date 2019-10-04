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


profits <-c(10,20,40)
probs <- c(.2,.8,.3)
E1 = profits[1]*probs[1]+0*(1-probs[1])
E2 = profits[2]*probs[2]+0*(1-probs[2])
E3 = profits[3]*probs[3]+0*(1-probs[3])
E = E1 + E2 + E3
E