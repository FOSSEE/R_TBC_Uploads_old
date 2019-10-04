#Chapter 5- Eigenvalues and Eigenvectors
#Diagonalization of a matrix
#Page No.166 / 5-10
#Prob 7
#5.3.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
a=matrix(c(1,0,6,-1),2,2,TRUE)
print('A=')
print(a)
print('Since A is triangular, eigenvalues are the diagonal entries.')
cat('Eigenvalues are:',a[2,2],a[1,1])
print('for lambda=1')
print('A-1I=')
b=a-diag(2)
print(b)
print('Hence, x1=(1/3)x2 with x2 as free variable.')
print('Eigenvector corresponding to lambda=1 is:')
u1=matrix(c(1,3),2,1,TRUE)
print(u1)
print('for lambda=-1')
print('A-(-1)I=')
b=a+diag(2)
print(b)
print('Hence, x1=0 with x2 as free variable.')
print('Eigenvector corresponding to lambda=-1 is:')
u2=matrix(c(0,1),2,1,TRUE)
print(u2)
print('Thus, matrix P=')
um=cbind(u1,u2)
print(um)
print('and matrix D=')
Dm=matrix(c(1,0,0,-1),2,2,TRUE)
print(Dm)