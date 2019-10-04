##Chapter 8 : Integer Linear Programming
##Example 2-2 : Page 364

# Objective function
a <- c(7,10)

# Constraint 1 :
C1 <- c(-1,3)
bc1<- 6

# Constraint 2 
C2 <-c(7,1)
bc2<-35

library("lpSolve")
solution<-lp("max", a, rbind(C1, C2), rep("<=",2), c(bc1, bc2),int.vec=c(1,2))
solution$objval
solution$solution

## lpSolve solver is based on the revised simplex method and a branch-and-bound (B&B) approach.