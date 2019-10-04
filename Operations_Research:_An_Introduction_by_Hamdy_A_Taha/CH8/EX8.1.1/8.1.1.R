##Chapter 8 : Integer Linear Programming
##Example 1-1 : Page 336

# Objective function
a <- c(20,40,20,15,30)

# Constraint 1 :
C1 <- c(5,4,3,7,8)
bc1<- 25

# Constraint 2 
C2 <- c(1,7,9,4,6)
bc2<-25

# Constraint 3
C3 <- c(8,10,2,1,10)
bc3<-25

library("lpSolve")
solution<-lp("max", a, rbind(C1, C2,C3), rep("<=",3), c(bc1, bc2,bc3),all.bin=T)
solution$objval
solution$solution
