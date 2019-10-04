#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalues of a matrix
#Page No.162 / 5-6
#Prob 13
#5.2.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To find the eigenvalues of the matrix A')
print('A=')
av<-c(6,-2,0,-2,9,0,5,8,3)
a=matrix(av,3,3,TRUE)
print(a)
print('Eigenvalues of A are:')
eig<-eigen(a)
eigv<-eig$values
print(eigv)