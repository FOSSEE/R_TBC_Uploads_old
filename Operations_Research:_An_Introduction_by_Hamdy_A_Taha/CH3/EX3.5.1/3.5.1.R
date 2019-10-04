##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 5-1 : Page 108

# Objective function :Max 3 * x1 + 9 * x2
a <- c(3,9)

# Constraint 1 : x1 + 4 * x2 <= 8
C1 <- c(1,4)
bc1<- 8

# Constraint 2 : x1 + 2*x2 <= 4
C2 <- c(1,2)
bc2<-4


library("boot")

solution=simplex(a,rbind(C1,C2),c(bc1,bc2) ,maxi = T)
##The simplex function arbitrarily breaks the tie in minimum ratio for the leaving variable.
