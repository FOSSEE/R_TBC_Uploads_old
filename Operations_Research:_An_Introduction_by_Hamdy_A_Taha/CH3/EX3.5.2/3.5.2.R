##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 5-2 : Page 112

# Objective function :Max 2 * x1 + 4 * x2
a <- c(2,4)

# Constraint 1 : 1 * x1 + 2 * x2 <= 5
C1 <- c(1,2)
bc1<- 5

# Constraint 2 : x1 + x2 <= 4
C2 <- c(1,1)
bc2<-4

library("boot")

simplex(a,rbind(C1,C2),c(bc1,bc2) ,maxi = T)
#The simplex function as well as lpsolve stops as soon as a feasible optima is obtained and doesn't evaluate 
#alternate optima