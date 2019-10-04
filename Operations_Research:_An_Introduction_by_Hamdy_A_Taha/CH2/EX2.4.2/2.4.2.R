##Chapter 2 : Modelling with Linear Programming
##Example 4-2 : Page 41

# Objective function :Max (30 * x1 + 40 * x2 + 20 * x3 + 10 * x4) 
#                    - (15 * s1 + 20 * s2 + 10 * s3 + 8 * s4)
a <- c(30,40,20,10,-15,-20,-10,-8)

# Constraint 1 : 0.3 * x1 + 0.3 * x2 + 0.25 * x3 + 0.15 * x4  <= 1000
C1 <- c(0.3,0.3,0.25,0.15,0,0,0,0)
bc1<- 1000

# Constraint 2 : 0.25 * x1 + 0.35 * x2 + 0.3 * x3 + 0.1 * x4 <= 1000
C2 <- c(0.25,0.35,0.3,0.1,0,0,0,0)
bc2<-1000

# Constraint 3 : 0.45 * x1 + 0.5 * x2 + 0.4 * x3 + 0.22 * x4 <=1000
C3 <- c(0.45,0.5,0.4,0.22,0,0,0,0)
bc3<-1000

# Constraint 4 : 0.15 * x1 + 0.15 * x2 + 0.1 * x3 + 0.05 * x4 <=0
C4 <- c(0.15,0.15,0.1,0.05,0,0,0,0)
bc4<-1000

# Constraint 5 : x1 + s1 = 800
C5 <- c(1,0,0,0,1,0,0,0)
bc5<-800

# Constraint 6 : x2 + s2 = 750
C6 <- c(0,1,0,0,0,1,0,0)
bc6<-750

# Constraint 7: x3 + s3 = 600
C7 <- c(0,0,1,0,0,0,1,0)
bc7<-600

# Constraint 8 : x4 + s4 = 500
C8 <- c(0,0,0,1,0,0,0,1)
bc8<-500

library("boot")

simplex(a , A1 = rbind(C1, C2, C3, C4), b1 = c(bc1, bc2, bc3, bc4),
        A2=NULL, b2=NULL, A3 = rbind(C5,C6,C7,C8), b3 = c(bc5,bc6,bc7,bc8), maxi = TRUE)