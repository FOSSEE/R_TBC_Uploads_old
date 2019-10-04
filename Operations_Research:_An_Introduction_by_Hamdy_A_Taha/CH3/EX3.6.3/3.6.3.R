##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 6-3 : Page 124

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

library("lpSolve")
solution=lp("max", a, rbind(C1, C2, C3), rep("<=",3), c(bc1, bc2, bc3),compute.sens = 1)

##Lower limit of hours resource for respective machines for which dual prices are valid 
solution$duals.from

##Upper limit of hours resource for respective machines for which dual prices are valid
solution$duals.to

##Refer Footnote 10, Page 127