#Chapter 5- Eigenvalues and Eigenvectors
#Diagonalization of a matrix
#Page No.166 / 5-10
#Prob 1
#5.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('The given eigenvector matrix is:')
p=matrix(c(5,7,2,3),2,2,TRUE)
print('P=')
print(p)
print('The diagonal matrix is:')
d=matrix(c(2,0,0,1),2,2,TRUE)
print('D=')
print(d)
print('Therefore, matrix A=PD(p^-1)')
s=solve(p)
print(p %*% d %*% s)
print('Hence, A^4=P(D^4)(P^-1)')
print(p%*%(d^4)%*%s)