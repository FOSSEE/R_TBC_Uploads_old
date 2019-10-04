##Chapter 8 : Integer Linear Programming
##Example 1-4 : Page 350

M<-1000
# Objective function
a <- c(0,0,0,0,0,0,19,0,12,0,34,0)

# Constraint 1 :
C1 <- c(1,-1,0,M,0,0,0,0,0,0,0,0)
bc1<- 20

# Constraint 2 
C2 <-c(-1,1,0,-M,0,0,0,0,0,0,0,0)
bc2<-5-M

# Constraint 3
C3 <- c(1,0,-1,0,M,0,0,0,0,0,0,0)
bc3<-15

# Constraint 4
C4 <- c(-1,0,1,0,-M,0,0,0,0,0,0,0)
bc4<-5-M

# Constraint 5
C5 <- c(0,1,-1,0,M,0,0,0,0,0,0,0)
bc5<-15

# Constraint 6
C6 <- c(0,-1,1,0,-M,0,0,0,0,0,0,0)
bc6<-20-M


# Constraint 7
C7 <- c(1,0,0,0,0,0,-1,1,0,0,0,0)
bc7<-20

# Constraint 8
C8 <- c(0,1,0,0,0,0,0,0,-1,1,0,0)
bc8<-2

# Constraint 9
C9 <- c(0,0,1,0,0,0,0,0,0,0,-1,1)
bc9<-20

library("lpSolve")
solution<-lp("min", a, rbind(C1, C2,C3,C4,C5,C6,C7,C8,C9), c(rep(">=",6),rep("=",3)), c(bc1, bc2,bc3,bc4,bc5,bc6,bc7,bc8,bc9),int.vec=c(4,5,6))
solution$objval
solution$solution
