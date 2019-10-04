#Example3.15,section IV.3:Mechanics of Matrix Multiplication,chapter3,page 241
#A permutation matrix is square and is all 0's except for a single 1 in each row and column.
A <- matrix(c(0,1,0,0,0,1,1,0,0),ncol = 3) #permutation matrix
B <- matrix(c(1,4,7,2,5,8,3,6,9),ncol = 3)
#From the left these matrices permute rows.
A %*% B
#From the right they permute columns.
B %*% A
