##Chapter 5 : Transportation Model and its Variant
##Example 1-1 : Page 195
##Refer to the transportation tableau in Page 197
costs <- matrix (c(80,215,100,108,102,68), 3, 2,byrow = T)

#Constraints 1,2 & 3 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",3)
row.rhs <-c(1000,1500,1200)

#Constraints 4 & 5 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",2)
col.rhs <-c(2300,1400)

library(lpSolve)
##lpSolve library has lp.transport function specially for problems which can be formulated as a transportation tableau
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$objval
solution$solution
