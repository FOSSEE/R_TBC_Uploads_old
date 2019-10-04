##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 5-4 : Page 116

# Objective function :Max 3 * x1 +  2 * x2
a <- c(3,2)

# Constraint 1 :  2 * x1 +  x2 <= 2
C1 <- c(2,1)
bc1<- 2

# Constraint 2 : 3 * x1 + 4 * x2 >= 12
C2 <- c(3,4)
bc2<-12

library("lpSolve")

lp("max", a, rbind(C1, C2), c("<=",">="), c(bc1, bc2))
#Error: no feasible solution found