#Chapter 2- Matrix Algebra
#Invertibility of a matrix
#Page No.73 / 2-11
#Prob 1
#2.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(5,7,-3,-6)
a=matrix(av,2,2,TRUE)
print(a)
print('the columns are lineraly independent')
print('hence, by invertible matrix theorem')
print('the matrix A is invertible')