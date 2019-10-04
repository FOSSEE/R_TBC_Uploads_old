##Chapter 5 : Transportation Model and its Variant
##Example 3-1 : Page 207
costs <- matrix (c(10,2,20,11,12,7,9,20,4,14,16,18), 3, 4,byrow = T)

#Constraints 1,2 & 3 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",3)
row.rhs <-c(15,25,10)

#Constraints 4 & 5 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",4)
col.rhs <-c(5,15,15,15)

library(lpSolve)
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$objval
solution$solution
