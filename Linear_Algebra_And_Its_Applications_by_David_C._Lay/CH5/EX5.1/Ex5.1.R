#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalue of a matrix
#Page No.157 / 5-1
#Prob 1
#5.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to check if 2 is an eigenvalue of matrix A')
a=matrix(c(3,2,3,8),2,2,TRUE)
print('A=')
print(a)
print('A-2I=')
b=a-2*diag(2)
print(b)
print('The columns of A are clearly independent,')
print('hence (A-2I)x=0 has a non trivial solution and 2 is an eigenvalue of matrix A')