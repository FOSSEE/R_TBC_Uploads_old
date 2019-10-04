##Chapter 2 : Modelling with Linear Programming
##Example 4-7 : Page 57

# Objective function :Max 6.7 * (x11 +x21) + 7.2 * (x12 + x22) + 8.1 * (x13 + x23)
a <- c(6.7, 7.2, 8.1, 6.7, 7.2, 8.1)

# Constraint 1 : 5 *(x11 + x12 + x13) + 10 * (x21 + x22 + x23) <= 1500000
C1 <- c(5, 5, 5, 10, 10, 10)
bc1<- 1500000

# Constraint 2 : 2 * (x21 + x22 + x23) <=200000
C2 <- c(0, 0, 0, 2, 2, 2)
bc2<-200000

# Constraint 3 : (x11 + x21) <= 50000 
C3 <- c(1,0,0,1,0,0)
bc3<-50000

# Constraint 4 : (x12 + x22) <= 30000
C4 <- c(0, 1, 0, 0, 1, 0)
bc4<-30000

# Constraint 5 : (x13 + x23) <= 40000
C5 <- c(0, 0, 1, 0, 0, 1)
bc5<-40000

# Constraint 6 : 5 * x11 - 11 * x21 <= 0 
C6 <- c(5,0,0,-11,0,0)
bc6<-0

# Constraint 7 : 7* x12 - 9 * x22 <= 0
C7 <- c(0, 7, 0, 0, -9, 0)
bc7<-0
# Constraint 8 : 10 * x12 - 6 * x22 <= 0
C8 <- c(0, 0, 10, 0, 0, -6)
bc8<-0

#to install the lpSolve package,run the following command
#install.packages("lpSolve")
library("lpSolve")

solution = lp("max", a, rbind(C1, C2, C3, C4, C5, C6, C7, C8), rep("<=",8), 
              c(bc1, bc2, bc3, bc4, bc5, bc6, bc7, bc8))
solution
solution$solution
