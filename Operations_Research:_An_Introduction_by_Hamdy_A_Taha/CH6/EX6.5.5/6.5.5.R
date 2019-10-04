##Chapter 6 : Network Model
##Example 5-5 : Page 288

# Objective function :Max 6*x12 + 6*x13 + 3*x23 + 8*x24 + 2*x35 + 11*x36 +1 *x46 + 12*x56
a <- c(6,6,3,8,2,11,0,1,12)

# Constraint 1 :  -x12 -  x13 = -1
C1 <- c(-1,-1,0,0,0,0,0,0,0)
bc1<- -1

# Constraint 2 : x12 - x23 - x24 = 0
C2 <- c(1,0,-1,-1,0,0,0,0,0)
bc2<-0

# Constraint 3 : x13 + x23 - x35 - x36 = 0
C3 <- c(0,1,1,0,-1,-1,0,0,0)
bc3<-0

# Constraint 4 : x24 -x45 -x46 = 0
C4 <- c(0,0,0,1,0,0,-1,-1,0)
bc4<-0

# Constraint 5 : x35 + x45 - x56 = 0
C5 <- c(0,0,0,0,1,0,1,0,-1)
bc5<-0

# Constraint 6 : x35 + x46 + x56 = 1
C6 <- c(0,0,0,0,0,1,0,1,1)
bc6<-1
library("lpSolve")
solution<-lp("max", a, rbind(C1, C2,C3,C4,C5,C6), rep("=",6), c(bc1, bc2,bc3,bc4,bc5,bc6))
solution$objval
solution$solution