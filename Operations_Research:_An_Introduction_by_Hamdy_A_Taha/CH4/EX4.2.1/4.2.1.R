##Chapter 4 : Duality and Post-optimality Analysis
##Example 2-1 : Page 160

# Objective function :Max 5 * x1 +  12 * x2 + 4 * x3
a <- c(5,12,4)

# Constraint 1 :   x1 +  2 * x2 + x3 <= 10
C1 <- c(1,2,1)
bc1<- 10

# Constraint 2 : 2 * x1 - x2 + 3 * x3 = 8
C2 <- c(2,-1,3)
bc2<-8

library("linprog")

solveLP(a,c(bc1, bc2), rbind(C1, C2), c("<=","="), maximum = T,lpSolve = T)

## At the moment the dual problem can not be solved with equality constraints in the function solveLP
##Nevertheless we change the equality constrait to two inequality constraints. i.e.
## f1(x)=b ==> f1(x)<=b , f1(x)>=b
solveLP(a,c(bc1, bc2, bc2), rbind(C1, C2, C2), c("<=","<=",">="), maximum = T,lpSolve = T,solve.dual = T)
