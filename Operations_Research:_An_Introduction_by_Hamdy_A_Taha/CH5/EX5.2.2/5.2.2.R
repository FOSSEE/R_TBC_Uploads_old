##Chapter 5 : Transportation Model and its Variant
##Example 2-2 : Page 203

#BigM is Big
BigM=1000

#Initializing the matrix with all values as M
costs<-matrix(BigM,8,8,byrow = T)
#All values of first row are 12
costs[1,]=c(rep(12,8))
#All values of 8th column is 0
costs[,8]=rbind(rep(0,8))

##Adding the rest of the values
for (i in 2:7) {
  costs[i,]=c(rep(BigM,i-1),c(6,5,rep(3,4))[1:(8-i)],0)
}

#Constraints 1 to 8 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",8)
row.rhs <-c(124,24,12,14,20,18,14,22)

#Constraints 8 to 16 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",8)
col.rhs <-c(24,12,14,20,18,14,22,124)

library(lpSolve)
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$solution
