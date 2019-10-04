##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 5-3 : Page 115

# Objective function :Max 2 * x1 +  x2
a <- c(2,1)

# Constraint 1 :  x1 -  x2 <= 10
C1 <- c(1,-1)
bc1<- 10

# Constraint 2 : 2 * x1 <= 40
C2 <- c(2,0)
bc2<-40

library("lpSolve")

solution = lp("max", a, rbind(C1, C2), rep("<=",2), c(bc1, bc2))
#Error: status 3 implies that the model is unbounded