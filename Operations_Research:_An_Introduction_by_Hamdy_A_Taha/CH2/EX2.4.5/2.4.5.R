##Chapter 2 : Modelling with Linear Programming
##Example 4-5 : Page 50

# Objective function :Min x1 + x2 + x3 + x4 + x5 + x6
a <- c(1,1,1,1,1,1)

# Constraint 1 : x1 + x6 >= 4
C1 <- c(1,0,0,0,0,1)
bc1<- 4

# Constraint 2 : x1 + x2 >= 8
C2 <- c(1,1,0,0,0,0)
bc2<-8

# Constraint 3 : x2 + x3 >= 10
C3 <- c(0,1,1,0,0,0)
bc3<-10

# Constraint 4 : x3 + x4 >= 7
C4 <- c(0,0,1,1,0,0)
bc4<-7

# Constraint 5 : x4 + x5 >= 12
C5 <- c(0,0,0,1,1,0)
bc5<-12

# Constraint 6 : x5 + x6 >= 4
C6 <- c(0,0,0,0,1,1)
bc6<-4

library("lpSolve")

solution=lp("min",a, rbind(C1, C2, C3, C4, C5, C6), rep(">=",6),c(bc1, bc2, bc3, bc4, bc5, bc6))

solution
solution$solution
