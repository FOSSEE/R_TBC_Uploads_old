#EX_6_1
#page 2
library(markovchain)#loading libraries
library(diagram)
p<-c(0.8,0.2,0.6,0.4)
probability<-matrix(p,nrow=2,ncol=2,byrow=T)
probability#probabilty matrix
plotmat(probability)
  