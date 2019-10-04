##Chapter 6 : Network Model
##Example 4-3 : Page 271

# Objective function 1 :Max x12 + x13 + x14
a <- c(1,1,1,0,0,0,0,0,0)

# Objective function 2 :Max x25 + x35 + x45
b <- c(0,0,0,0,1,0,1,0,1)

# Constraint 1 :  x12 -  x23 - x25 = 0
C1 <- c(1,0,0,-1,-1,0,0,0,0)
bc1<- 0

# Constraint 2 : x13 + x23 - x34 -x35 + x43 = 0
C2 <- c(0,1,0,1,0,-1,-1,1,0)
bc2<-0

# Constraint 3 : x14 + x34 - x43 -x45 = 0
C3 <- c(0,0,1,0,0,1,0,-1,-1)
bc3<-0

# Constraint 4 : x12 <= 20
C4 <- c(1,0,0,0,0,0,0,0,0)
bc4<-20

# Constraint 5 : x13 <= 30
C5 <- c(0,1,0,0,0,0,0,0,0)
bc5<-30

# Constraint 6 : x14 <= 10
C6 <- c(0,0,1,0,0,0,0,0,0)
bc6<-10

# Constraint 7 : x23 <= 40
C7 <- c(0,0,0,1,0,0,0,0,0)
bc7<-40

# Constraint 8 : x25 <= 30
C8 <- c(0,0,0,0,1,0,0,0,0)
bc8<-30

# Constraint 9 : x34 <= 10
C9 <- c(0,0,0,0,0,1,0,0,0)
bc9<-10

# Constraint 10 : x35 <= 20
C10 <- c(0,0,0,0,0,0,1,0,0)
bc10<-20

# Constraint 11 : x43 <= 5
C11 <- c(0,0,0,0,0,0,0,1,0)
bc11<-5

# Constraint 12 : x45 <= 20
C12 <- c(0,0,0,0,0,0,0,0,1)
bc12<-20

library("lpSolve")

solution<-lp("max", a, rbind(C1, C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12), c(rep("=",3),rep("<=",9)), c(bc1, bc2,bc3,bc4,bc5,bc6,bc7,bc8,bc9,bc10,bc11,bc12))
solution$objval
solution$solution

solution<-lp("max", b, rbind(C1, C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12), c(rep("=",3),rep("<=",9)), c(bc1, bc2,bc3,bc4,bc5,bc6,bc7,bc8,bc9,bc10,bc11,bc12))
solution$objval
solution$solution
