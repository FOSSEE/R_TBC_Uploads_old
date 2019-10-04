##Chapter 15 : Markov Chain
##Example 6-1 : Page 610

#transition matrix
P=matrix(c(0,0.95,0,0,0.05,0,0.07,0,0.9,0,0.03,0,0,0,0,0.95,0.05,0,0,0,0.07,0,0.03,0.9,0,0,0,0,1,0,0,0,0,0,0,1),nrow=6,byrow = T)
N=P[1:4,1:4]
A=P[1:4,5:6]
#Espexted time of absorption
ExpT=solve(diag(4)-N)
#Pobability of absorption
POfAbsorption=ExpT %*% A 
ExpT
POfAbsorption