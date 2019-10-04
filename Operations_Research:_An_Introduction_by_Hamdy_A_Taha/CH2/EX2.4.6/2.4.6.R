##Chapter 2 : Modelling with Linear Programming
##Example 4-6 : Page 52

# Objective function :Max 1000 * x1 + 1900 * x2 + 2700 * x3 + 3400 * x4
a <- c(1000, 1900, 2700, 3400, 0)

# Constraint 1 : 0.18 * x1 + 0.28 * x2 + 0.4 * x3 + 0.5 * x4 -0.2125 * x5 <= 0
C1 <- c(0.18, 0.28, 0.4, 0.5, -0.2125)
bc1<- 0

# Constraint 2 : x5 <= 300
C2 <- c(0,0,0,0,1)
bc2<-300

# Constraint 3 : -0.8 * x1 + 0.2 * x2 + 0.2 * x3 + 0.2 * x4 <= 0
C3 <- c(-0.8, 0.2, 0.2, 0.2, 0)
bc3<-0

# Constraint 4 : 0.1 * x1 - 0.9 * x2 + 0.1 * x3 + 0.1 * x4 <= 0
C4 <- c(0.1, -0.9, 0.1, 0.1, 0)
bc4<-7

# Constraint 5 : 0.25 * x1 + 0.25 * x2 - 0.75 * x3 - 0.75 * x4  <= 0
C5 <- c(0.25,0.25,-0.75,-0.75,0)
bc5<-0

# Constraint 6 : 50 * x1 + 70 * x2 + 130 * x3 + 160 * x4 + 2* x5 <= 15000
C6 <- c(50, 70, 130, 160, 2)
bc6<-15000

#to install the lpSolve package,run the following command
#install.packages("lpSolve")
library("lpSolve")

solution = lp("max", a, rbind(C1, C2, C3, C4, C5, C6), rep("<=",6), 
              c(bc1, bc2, bc3, bc4, bc5, bc6))
solution
solution$solution
