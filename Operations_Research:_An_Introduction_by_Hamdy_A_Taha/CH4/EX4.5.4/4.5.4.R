##Chapter 4 : Duality and Post-optimal Analysis
##Example 5-4 : Page 189
OptimalDualValues<-c(1,2,0)

ReducedCostX7 <-sum(c(1,1,2)*OptimalDualValues)-4
ReducedCostX7

Inverse <- rbind(c(0.5,-0.25,0),c(0,0.5,0),c(-2,1,1))
OldX7Col<-rbind(1,1,2)
NewX7Col<-Inverse%*%OldX7Col
NewX7Col
