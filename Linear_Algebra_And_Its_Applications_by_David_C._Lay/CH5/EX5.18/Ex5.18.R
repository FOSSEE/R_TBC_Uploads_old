#Chapter 5- Eigenvalues and Eigenvectors
#Scale factor of transformation
#Page No.176 / 5-20
#Prob 7
#5.5.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Matrix A=')
a=matrix(c(sqrt(3),-1,1,sqrt(3)),2,2,TRUE)
print(a)
print('Eigenvalues of A are:')
eig=eigen(a)
eigv<-eig$values
print(eigv)
print('The scale factor associated with the transformation x to Ax is:')
print(abs(eigv[1]))