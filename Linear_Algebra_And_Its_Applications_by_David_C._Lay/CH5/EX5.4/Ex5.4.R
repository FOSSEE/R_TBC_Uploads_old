#Chapter 5- Eigenvalues and Eigenvectors
#Property of non-invertible matrices
#Page No.159 / 5-3
#Prob 19
#5.1.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('The given matrix is:')
av<-c(1,2,3,1,2,3,1,2,3)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
print('A is not invertible because its columns are linearly dependent.')
print('Hence, 0 is an eigenvalue of matrix A.')