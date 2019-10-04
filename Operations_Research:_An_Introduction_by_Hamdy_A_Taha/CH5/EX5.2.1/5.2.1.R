##Chapter 5 : Transportation Model and its Variant
##Example 2-1 : Page 202

costs <- 40 + matrix (c(0,0.5,1,1.5,2,0,0.5,1,4,2,0,0.5,6,4,2,0), 4, 4,byrow = T)

#Constraints 1,2,3 & 4 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",4)
row.rhs <-c(50,180,280,270)

#Constraints 4 to 8 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",4)
col.rhs <-c(100,200,180,300)

library(lpSolve)
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$solution
solution$objval