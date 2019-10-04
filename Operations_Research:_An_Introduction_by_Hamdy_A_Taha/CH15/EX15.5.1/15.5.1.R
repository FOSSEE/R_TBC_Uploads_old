##Chapter 15 : Markov Chain
##Example 5-1 : Page 606

#transition matrix
P=matrix(c(0.3,0.6,0.1,0.1,0.6,0.3,0.05,0.4,0.55),nrow = 3,byrow = T)
N1=P[-1,-1]
#mean first-passage time
mu=solve(diag(2)- N1)%*%rep(1,2)