##Chapter 4 : Duality and Post-optimal Analysis
##Example 5-1 : Page 182

##Situation 1 
Inverse <- rbind(c(0.5,-0.25,0),c(0,0.5,0),c(-2,1,1))
ConstraintNNewRightHandSide <-rbind(600,640,590)
TableauNewRightHandSide <- Inverse %*% ConstraintNNewRightHandSide
TableauNewRightHandSide

##Situation 2
ConstraintNNewRightHandSide <-rbind(450,460,400)
TableauNewRightHandSide <- Inverse %*% ConstraintNNewRightHandSide
TableauNewRightHandSide
