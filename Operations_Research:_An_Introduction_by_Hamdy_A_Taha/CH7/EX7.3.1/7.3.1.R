##Chapter 7 : Advanced Linear Programming
##Example 3-1 : Page 315
# Objective function
a <- c(3,5,2)

#Constraints
C<-rbind(c(1,1,2),c(2,4,3),c(1,0,0),c(0,1,0),c(0,-1,0),c(0,0,1))
b<-rbind(14,43,4,10,-7,3)
library("lpSolve")

solution<-lp("max", a, C, rep("<=",6), b)
solution$objval
solution$solution