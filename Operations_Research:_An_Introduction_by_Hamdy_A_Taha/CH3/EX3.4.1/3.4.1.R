##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 4-1 : Page 100

# Objective function :Min 4 * x1 + x2 + M * R1 + M * R2 
BigM <- 1000
a <- c(4,1,0,0,BigM,BigM)

# Constraint 1 : 3*x1 + x2 + R1 = 3
C1 <- c(3,1,0,0,1,0)
bc1<- 3

# Constraint 2 : 4*x1 + 3*x2 -x3 + R2 >= 6
C2 <- c(4,3,-1,0,0,1)
bc2<-6

# Constraint 3 : x1 + 2*x2 +x4 <=4
C3 <- c(1,2,0,1,0,0)
bc3<-4

library("boot")

simplex(a,NULL,NULL,NULL,NULL, rbind(C1,C2,C3),c(bc1,bc2,bc3) ,maxi = F)