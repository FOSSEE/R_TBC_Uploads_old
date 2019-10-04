##Chapter 2 : Modelling with Linear Programming
##Example 4-3 : Page 41

# Objective function :Min (50 * x1 + 45 * x2 + 55 * x3 + 48 * x4 + 52 * x5 + 50 * x6) 
#                    + 8(I1 +I2 +I3 +I4 + I5 + I6)
a <- c(50,45,55,48,52,50,8,8,8,8,8,8)

# Constraint 1 : x1 -I1 = 100
C1 <- c(1,0,0,0,0,0,-1,0,0,0,0,0)
bc1<- 100

# Constraint 2 : I1 + x2 - I2 = 250
C2 <- c(0,1,0,0,0,0,1,-1,0,0,0,0)
bc2<-250

# Constraint 3 : I2 + x3 - I3 = 190
C3 <- c(0,0,1,0,0,0,0,1,-1,0,0,0)
bc3<-190

# Constraint 4 : I3 + x4 - I4 = 140
C4 <- c(0,0,0,1,0,0,0,0,1,-1,0,0)
bc4<-140

# Constraint 5 : I4 + x5 - I5 =220
C5 <- c(0,0,0,0,1,0,0,0,0,1,-1,0)
bc5<-220

# Constraint 6 : I5 + x6 = 110
C6 <- c(0,0,0,0,0,1,0,0,0,0,1,0)
bc6<-110

library("boot")

simplex(a , A1=NULL,b1=NULL, A2=NULL, b2=NULL, A3 = rbind(C1, C2, C3, C4,C5,C6), 
        b3 = c(bc1, bc2, bc3, bc4,bc5,bc6), maxi = F)