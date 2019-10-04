##Chapter 4 : Duality and Post-optimality Analysis
##Example 3-2 : Page 173

# Objective function :Max 3 * x1 +  2 * x2 + 5 * x3
a <- c(3,2,5)

# Constraint 1 :   x1 +  2 * x2 + x3 <= 430
C1 <- c(1,2,1)
bc1<- 430

# Constraint 2 : 3 * x1 + 2 * x3 <= 460
C2 <- c(3,0,2)
bc2<-460

# Constraint 3 : 1 * x1 + 4 * x2 <= 420
C3 <- c(1,4,0)
bc3<-420

library("linprog")
solveLP(a,c(bc1, bc2, bc3), rbind(C1, C2, C3), rep("<=",3), maximum = T,lpSolve = T)

##solve.dual arguement can be passed to solveLP function to solve the dual of the problem
solveLP(a,c(bc1, bc2, bc3), rbind(C1, C2, C3), rep("<=",3), maximum = T,lpSolve = T,solve.dual = T)
