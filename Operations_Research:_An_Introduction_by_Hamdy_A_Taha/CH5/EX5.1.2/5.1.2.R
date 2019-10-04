##Chapter 5 : Transportation Model and its Variant
##Example 1-2 : Page 197

##Part1- Adding a dummy origin
costs <- matrix (c(80,215,100,108,102,68,0,0), 4, 2,byrow = T)

#Constraints 1 to 4 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",4)
row.rhs <-c(1000,1300,1200,200)

#Constraints 5 & 6 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",2)
col.rhs <-c(2300,1400)

library(lpSolve)
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$solution


##Part2 - Adding a dummy destination
costs <- matrix (c(80,215,0,100,108,0,102,68,0), 3, 3,byrow = T)

#Constraints 1,2 & 3 are row constraints as they corresponds to rows of transportation tableau
row.signs <-rep("=",3)
row.rhs <-c(1000,1500,1200)

#Constraints 4 & 5 are coloumn constraints as they corresponds to coloumns of transportation tableau
col.signs <-rep("=",3)
col.rhs <-c(1900,1400,400)

library(lpSolve)
solution <- lp.transport (costs, "min", row.signs, row.rhs, col.signs, col.rhs)
solution$solution
