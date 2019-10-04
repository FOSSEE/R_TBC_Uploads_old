#Chapter 2- Matrix Algebra
#Inverse of a matrix
#Page No.67 / 2-5
#Prob 1
#2.2.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix:')
av<-c(8,6,5,4)
a=matrix(av,2,2,TRUE)
print(a)
print('inverse of the matrix is:')
print(solve(a))