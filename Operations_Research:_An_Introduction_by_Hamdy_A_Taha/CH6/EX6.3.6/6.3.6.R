##Chapter 6 : Network Model
##Example 3-6 : Page 256

# Objective function :Min 100 * x12 +  30 * x13 +20* x23 + 10*x34 + 60 * x35 + 15 * x42 + 50 * x45
a <- c(100,30,20,10,60,15,50)

# Constraint 1 :  x12 +  x13 = 1
C1 <- c(1,1,0,0,0,0,0)
bc1<- 1

# Constraint 2 : x12 + x42 - x23 = 1
C2 <- c(1,0,-1,0,0,1,0)
bc2<-1

# Constraint 3 : x13 + x23 - x34 -x35 = 0
C3 <- c(0,1,1,-1,-1,0,0)
bc3<-0

# Constraint 4 : x34 - x42 - x45 = 0
C4 <- c(0,0,0,1,0,-1,-1)
bc4<-0

# Constraint 5 : x35 + x45 = 0
C5 <- c(0,0,0,0,1,0,1)
bc5<-0

library("lpSolve")

solution<-lp("min", a, rbind(C1, C2,C3,C4,C5), rep("=",5), c(bc1, bc2,bc3,bc4,bc5))
solution$objval
solution$solution
