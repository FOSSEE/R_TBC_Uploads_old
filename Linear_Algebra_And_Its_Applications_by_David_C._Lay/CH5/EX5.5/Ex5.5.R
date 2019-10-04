#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalue of a matrices
#Page No.162 / 5-6
#Prob 1
#5.2.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To find the eigenvalue of matrix A')
print('A=')
a=matrix(c(2,7,7,2),2,2,TRUE)
print(a)
print('Eigen values of A are:')
eig<-eigen(a)
eigv<-eig$values
print(eigv)