##Chapter 8 : Integer Linear Programming
##Example 1-2 : Page 340

# Objective function
a <- rep(1,8)

# Constraint 1 :
C1 <- c(1,1,rep(0,6))
bc1<- 1

# Constraint 2 
C2 <- c(0,1,1,rep(0,5))
bc2<-1

# Constraint 3
C3 <- c(0,0,0,1,1,0,0,0)
bc3<-1

# Constraint 4
C4 <- c(rep(0,6),1,1)
bc4<-1

# Constraint 5
C5 <- c(rep(0,5),1,1,0)
bc5<-1

# Constraint 6
C6 <- c(0,1,0,0,0,1,0,0)
bc6<-1

# Constraint 7
C7 <- c(1,0,0,0,0,1,0,0)
bc7<-1

# Constraint 8
C8 <- c(0,0,0,1,0,0,1,0)
bc8<-1

# Constraint 9
C9 <- c(0,1,0,1,0,0,0,0)
bc9<-1

# Constraint 10
C10 <- c(0,0,0,0,1,0,0,1)
bc10<-1

# Constraint 11
C11 <- c(0,0,1,0,1,0,0,0)
bc11<-1

library("lpSolve")
solution<-lp("min", a, rbind(C1, C2,C3,C4,C5,C6,C7,C8,C9,C10,C11), rep(">=",11), c(bc1, bc2,bc3,bc4,bc5,bc6,bc7,bc8,bc9,bc10,bc11),all.bin=T)
solution$objval
solution$solution
