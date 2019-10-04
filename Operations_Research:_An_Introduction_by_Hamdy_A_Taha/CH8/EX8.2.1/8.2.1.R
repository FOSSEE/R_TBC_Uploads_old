##Chapter 8 : Integer Linear Programming
##Example 2-1 : Page 356

# Objective function
a <- c(5,4)

# Constraint 1 :
C1 <- c(1,1)
bc1<- 5

# Constraint 2 
C2 <-c(10,6)
bc2<-45

library("lpSolve")
solution<-lp("max", a, rbind(C1, C2), rep("<=",2), c(bc1, bc2),int.vec=c(1,2))
solution$objval
solution$solution

## lpSolve solver is based on the revised simplex method and a branch-and-bound (B&B) approach.