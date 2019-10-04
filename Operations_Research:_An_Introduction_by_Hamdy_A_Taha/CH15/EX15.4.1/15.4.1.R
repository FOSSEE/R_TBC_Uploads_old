##Chapter 15 : Markov Chain
##Example 4-1 : Page 601

#transition matrix
A=matrix(c(0.6,-0.4,0.4,0.1,0.3,-0.45,1,1,1),nrow = 3,byrow = T)
b=c(rep(0,2),1)
#solve the linear equations
pi=solve(A,b)
pi
#mean recurrance time
mu=1/pi
mu