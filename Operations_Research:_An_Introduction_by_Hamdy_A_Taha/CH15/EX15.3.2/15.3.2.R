##Chapter 15 : Markov Chain
##Example 3-2 : Page 599

#transition matrix
P=matrix(c(0,0.6,0.4,0,1,0,0.6,0.4,0),nrow = 3,byrow = T)
library(expm)
#n=2
P%^%2
#n=3
P%^%3
#n=4
P%^%4
#n=5
P%^%5