#Probability that the package will have to be replaced
library(IPSUR)
P = 1 - choose(10,0)*(0.01)^0*(0.99)^10-choose(10,1)*(0.01)^1*(0.99)^9
P
#Probability that exactly one of the three packages will be returned
PP = choose(3,1)*P*(1-P)^2
PP