##Chapter 4 : Duality and Post-optimal Analysis
##Example 5-3 : Page 187

##Situation 1
NewObjCoeffBasic <- c(3,4,0)
Inverse <- rbind(c(0.5,-0.25,0),c(0,0.5,0),c(-2,1,1))

NewDualVariables <-NewObjCoeffBasic %*%  Inverse
NewDualVariables

##Element-wise multiplication to get Reduced Costs
ReducedCostX1<-sum(c(1,3,1)*NewDualVariables) -2
ReducedCostX4<-sum(c(1,0,0)*NewDualVariables) -0
ReducedCostX5<-sum(c(0,1,0)*NewDualVariables) -0
ReducedCostX1
ReducedCostX4
ReducedCostX5


CurrentOptimal <- c(0,100,230)
NewObjCoeff<-c(2,3,4)

#Optimal Objective value
NewRevenue <- sum(NewObjCoeff*CurrentOptimal)
NewRevenue

##Situation 2
NewObjCoeffBasic <- c(3,4,0)
Inverse <- rbind(c(0.5,-0.25,0),c(0,0.5,0),c(-2,1,1))

NewDualVariables <-NewObjCoeffBasic %*%  Inverse
NewDualVariables

##Element-wise multiplication to get Reduced Costs
ReducedCostX1<-sum(c(1,3,1)*NewDualVariables) -6
ReducedCostX4<-sum(c(1,0,0)*NewDualVariables) -0
ReducedCostX5<-sum(c(0,1,0)*NewDualVariables) -0
ReducedCostX1
ReducedCostX4
ReducedCostX5

NewObjCoeff<-c(-0.75,0,0,1.5,1.25,0)
C1<-c(-0.25,1,0,0.5,-0.25,0)
bc1<-100
C2<-c(1.5,0,1,0,0.5,0)
bc2<-230
C3<-c(2,0,0,-2,1,1)
bc3<-20
library("lpSolve")
solution=lp("max", NewObjCoeff, rbind(C1, C2, C3), rep("=",3), c(bc1, bc2, bc3))
solution
