##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 6-1 : Page 118

# Objective function :Max 30 * x1 +  20 * x2
a <- c(30,20)

# Constraint 1 :  2 * x1 +  x2 <= 8
C1 <- c(2,1)
bc1<- 8

# Constraint 2 : x1 + 3 * x2 <= 8
C2 <- c(1,3)
bc2<-8

library("lpSolve")

solution=lp("max", a, rbind(C1, C2), rep("<=",2), c(bc1, bc2),compute.sens = 1)

##Unit worth of resources in $/hr
solution$duals[1:2]

##Lower limit of hours resource for respective machines for which dual prices are valid 
solution$duals.from[1:2]

##Upper limit of hours resource for respective machines for which dual prices are valid
solution$duals.to[1:2]
