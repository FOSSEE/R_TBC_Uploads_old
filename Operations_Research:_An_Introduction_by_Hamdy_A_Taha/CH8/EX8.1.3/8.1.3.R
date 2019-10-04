##Chapter 8 : Integer Linear Programming
##Example 1-3 : Page 346

# Objective function
a <- c(0.25,0.21,0.22,16,25,18)

# Constraint 1 :
C1 <- c(1,1,1,0,0,0)
bc1<- 200

# Constraint 2 
C2 <- c(1,0,0,-200,0,0)
bc2<-0

# Constraint 3
C3 <- c(0,1,0,0,-200,0)
bc3<-0

# Constraint 4
C4 <- c(0,0,1,0,0,-200)
bc4<-0

library("lpSolve")
solution<-lp("min", a, rbind(C1, C2,C3,C4), c("=","<=","<=","<="), c(bc1, bc2,bc3,bc4),int.vec=c(4,5,6))
solution$objval
solution$solution
