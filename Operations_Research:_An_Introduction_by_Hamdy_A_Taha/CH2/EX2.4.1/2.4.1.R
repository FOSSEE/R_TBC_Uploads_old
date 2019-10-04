##Chapter 2 : Modelling with Linear Programming
##Example 4-1 : Page 35

# Objective function :Max (0.126 * x1 +0.1209 * x2 + 0.1164 * x3 + 0.11875 * x4 + 0.098 * x5) 
#                    - (0.1 * x1 + 0.07 * x2 + 0.03 * x3 + 0.05 * x4 + 0.02 * x5)
a <- c(0.126-0.1,0.1209-0.07,0.1164-0.03,0.11875-0.05,0.098-0.02)

# Constraint 1 : x1 + x2 + x3 + x4 + x5 <=12
C1 <- c(1,1,1,1,1)
bc1<- 12

# Constraint 2 : 0.4*x1 + 0.4*x2 + 0.4*x3 - 0.6*x4 - 0.6*x5 <=0
C2 <- c(0.4,0.4,0.4,-0.6,-0.6)
bc2<-0

# Constraint 3 : 0.5 * x1 + 0.5 * x2 - 0.5 * x3 <=0
C3 <- c(0.5,0.5,-0.5,0,0)
bc3<-0

# Constraint 4 : 0.06 * x1 + 0.03 * x2 - 0.01 * x3 +0.01 * x4 -0.02 * x5 <=0
C4 <- c(0.06,0.03,-0.01,0.01,-0.02)
bc4<-0

library("boot")
##Simplex is a function which uses dual simplex method
simplex(a , A1 = rbind(C1, C2, C3, C4), b1 = c(bc1, bc2, bc3, bc4), maxi = TRUE)