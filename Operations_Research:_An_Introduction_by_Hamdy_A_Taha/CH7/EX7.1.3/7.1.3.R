##Chapter 7 : Advanced Linear Programming
##Example 1-3 : Page 303

# Objective function :Max x1 + 4*x2 + 2*x3 + 5*x4
a <- c(1,4,7,5)

# Constraint 1 :  2*x1 +  x2 + 2*x3 + 4*x4 = 10
C1 <- c(2,1,2,4)
bc1<- 10

# Constraint 2 : 3*x1 - x2 - 2*x3 + 6*x4 = 5
C2 <- c(3,-1,-2,6)
bc2<-5

A<-rbind(C1,C2)
b<-rbind(bc1,bc2)

Binv<-solve(A[,c(1,2)])
X<-Binv%*%b

Binv
X