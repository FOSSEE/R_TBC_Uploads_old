##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 3-1 : Page 89

# Objective function :Max 5*x1 + 4*x2 + 0*s1 + 0*s2 + 0*s3 + 0*s4
a <- c(5,4,0,0,0,0)

# Constraint 1 : 6*x1 + 4*x2 +s1 = 24
C1 <- c(6,4,1,0,0,0)
bc1<- 24

# Constraint 2 : x1 + 2*x2 + s2 = 6
C2 <- c(1,2,0,1,0,0)
bc2<-6

# Constraint 3 : - x1 + x2 + s3 = 1
C3 <- c(-1,1,0,0,1,0)
bc3<-1

# Constraint 4 : 1*x2 + s4  = 2
C4 <- c(0,1,0,0,0,1)
bc4<-2

library("lpSolve")

solution=lp("max",a, rbind(C1, C2, C3, C4), rep("=",4),c(bc1, bc2, bc3, bc4))

solution
solution$solution
