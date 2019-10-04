#Chapter 5- Eigenvalues and Eigenvectors
#Complex Eigenvectors
#Page No.176 / 5-20
#Prob 1
#5.5.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Matrix A=')
a=matrix(c(1,-2,1,3),2,2,TRUE)
print(a)
print('Eigen values of A are')
eig=eigen(a)
eigv<-eig$values
print(eigv)
print('for lambda=2+i')
i=complex(real=2,imaginary=1)
print('A-(2+i)I=')
b=a-(i)*diag(2)
print(b)
print('With x2 as free variable, x1=-(1-i)x2')
print('Hence, eigenvector corresponding to lambda=2+i is:')
i1=complex(real=-1,imaginary=1)
m1=matrix(c(i1,1),2,1,TRUE)
print(m1)
i2=complex(real=-1,imaginary=-1)
print('for lambda=2-i, eigenvector is:')
m2=matrix(c(i2,1),2,1,TRUE)
print(m2)