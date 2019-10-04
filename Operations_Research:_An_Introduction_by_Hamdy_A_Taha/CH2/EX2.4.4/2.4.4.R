##Chapter 2 : Modelling with Linear Programming
##Example 4-4 : Page 43

# Objective function :Min 50(I1 + I2 + I3 + I4) + 200(Sm1 +Sm2 +Sm3 +Sm4) + 400(Sp1 +Sp2 +Sp3 +Sp4)
a <- c(0,0,0,0,50,50,50,50,200,200,200,200,400,400,400,400)

# Constraint 1 : 10*x1 -I1 = 400
C1 <- c(10,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0)
bc1<- 400

# Constraint 2 : I1 + 10 * x2 - I2 = 600
C2 <- c(0,10,0,0,1,-1,0,0,0,0,0,0,0,0,0,0)
bc2<-600

# Constraint 3 : I2 + 10 * x3 - I3 = 400
C3 <- c(0,0,10,0,0,0,1,-1,0,0,0,0,0,0,0,0)
bc3<-400

# Constraint 4 : I3 + 10 * x4 = 500
C4 <- c(0,0,0,10,0,0,0,1,0,0,0,0,0,0,0,0)
bc4<-500

# Constraint 5 : x1 -Sm1 + Sp1 = 0
C5 <- c(1,0,0,0,0,0,0,0,-1,0,0,0,1,0,0,0)
bc5<-0

# Constraint 6 : x2 -x1 -Sm2 +Sp2 = 0
C6 <- c(-1,1,0,0,0,0,0,0,0,-1,0,0,0,1,0,0)
bc6<-0

# Constraint 7 : x3 -x2 -Sm3 +Sp3 = 0
C7 <- c(0,-1,1,0,0,0,0,0,0,0,-1,0,0,0,1,0)
bc7<-0

# Constraint 8 : x4 -x3 -Sm4 +Sp4 = 0
C8 <- c(0,0,-1,1,0,0,0,0,0,0,0,-1,0,0,0,1)
bc8<-0

library("boot")

simplex(a , A1=NULL,b1=NULL, A2=NULL, b2=NULL, A3 = rbind(C1, C2, C3, C4, C5, C6, C7, C8), 
        b3 = c(bc1, bc2, bc3, bc4, bc5, bc6, bc7, bc8), maxi = F)