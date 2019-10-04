##Chapter 4 : Duality and Post-optimal Analysis
##Example 5-2 : Page 185

##Situation 1 is a theoretical explanation

##Situation 2
tableau=matrix(c(-0.25,1,0,0.5,-0.25,0,0,100,1.5,0,1,0,1.5,0,0,230,2,0,0,-2,1,1,0,20,3,3,1,0,0,0,1,500),nrow=4,ncol =8,byrow=T )

OldX7Row <- tableau[4,]
CoeffX2 <-OldX7Row[2]
CoeffX3 <-OldX7Row[3]
X2Row <- c(-0.25,1,0,0.5,-0.25,0,0,100)
X3Row <- c(1.5,0,1,0,1.5,0,0,230)
tableau[4,] <- OldX7Row - (CoeffX2 %*% tableau[1,] + CoeffX3 %*% tableau[2,])
tableau
