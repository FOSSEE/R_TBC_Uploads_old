##Chapter 7 : Advanced Linear Programming
##Example 2-1 : Page 309

# Objective function
a <- c(5,4,0,0,0,0)

#Constraints
C<-rbind(c(6,4,1,0,0,0),c(1,2,0,1,0,0),c(-1,1,0,0,1,0),c(0,1,0,0,0,1))
b<-rbind(24,6,1,2)
library("lpSolve")

solution<-lp("max", a, C, rep("=",4), b)
solution$objval
solution$solution

##This solver is based on the revised simplex method