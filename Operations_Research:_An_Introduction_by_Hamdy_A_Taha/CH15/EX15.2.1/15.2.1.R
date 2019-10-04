##Chapter 15 : Markov Chain
##Example 2-1 : Page 596

#Library expm is needed to get element-wise power of a matrix
library(expm)
P=matrix(c(0.3,0.6,0.1,0.1,0.6,0.3,0.05,0.4,0.55),nrow = 3,byrow = T)
P8=P%^%8
P16=P%^%16

#Steady-state probabilities
a1=c(1,0,0)%*%P
a8=c(1,0,0)%*%P8
a16=c(1,0,0)%*%P16

a1
a8
a16