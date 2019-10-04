#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalues
#Page No.173 / 5-17
#Prob 13
#5.4.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(0,1,-3,4),2,2,TRUE)
eig=eigen(a)
eigv<-eig$values
print('the eigen values are')
print(eigv)
print('for lambda=1')
m1=a-diag(2)
print(m1)
print('as a basis vector, take u1=[1 1]')
print('for lambda=3')
m2=a-3*diag(2)
print(m2)
print('as a basis vector, take u1=[1 3]')
#the matrix for lambda=3 has a calculation error in the textbook