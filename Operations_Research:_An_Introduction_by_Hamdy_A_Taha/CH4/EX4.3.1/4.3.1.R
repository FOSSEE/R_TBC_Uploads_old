##Chapter 4 : Duality and Post-optimality Analysis
##Example 2-1 : Page 171

# Objective function :Max 5 * x1 + 4 * x2
a <- c(5,4)

# Constraint 1 :   6 * x1 +  4 * x2 <= 24
C1 <- c(6,4)
bc1<- 24

# Constraint 2 : x1 + 2 * x2 <= 6
C2 <- c(1,2)
bc2<-6

# Constraint 3 : -x1 + x2 <= 1
C3 <- c(-1,1)
bc3<-1

# Constraint 4 : x2 <= 2
C4 <- c(0,1)
bc4<-2

library("linprog")

solveLP(a,c(bc1, bc2, bc3, bc4), rbind(C1, C2, C3, C4), rep("<=",4), maximum = T,lpSolve = T)

##solve.dual arguement can be passed to solveLP function to solve the dual of the problem
solveLP(a,c(bc1, bc2, bc3, bc4), rbind(C1, C2, C3, C4), rep("<=",4), maximum = T,lpSolve = T, solve.dual = T)

