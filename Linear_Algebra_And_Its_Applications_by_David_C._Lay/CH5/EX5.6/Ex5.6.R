#Chapter 5- Eigenvalues and Eigenvectors
#Complex eigenvalues
#Page No.162 / 5-6
#Prob 7
#5.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To find the eigenvalues of matrix A.')
print('A=')
a=matrix(c(5,3,-4,4),2,2,TRUE)
print(a)
print('Eigen values of A are:')
eig<-eigen(a)
eigv<-eig$values
print(eigv)
print('Hence, A has no real eigenvalues.')