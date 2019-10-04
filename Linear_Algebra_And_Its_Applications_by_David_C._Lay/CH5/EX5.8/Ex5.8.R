#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvectors
#Page No.163 / 5-7
#Prob 25a
#5.2.25a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Matrix A=')
a=matrix(c(.6,.3,.4,.7),2,2,TRUE)
print(a)
print('Eigenvector v1=')
v1=matrix(c(3/7,4/7),2,1,TRUE)
print(v1)
print('vector Xo=')
Xo=matrix(c(.5,.5),2,1,TRUE)
print(Xo)
print('Eigenvalues of A are:')
eig<-eigen(a)
c<-eig$values
print(c)
print('To verify if v1 is an eigenvector of A:')
print('A*v1=')
print(a %*% v1)
print('=')
print('1*v1')
print('Hence v1 is an eigenvector of A corresponding to eigenvalue 1.')
print('for lambda=.3')
print('A-.3I=')
b=a-.3*diag(2)
print(b)
print('performing row operations on the augmented matrix')
zm=matrix(0,2,1,TRUE)
c=cbind(b,zm)
print(c)
c[2,]=c[2,]-(c[2,1]/c[1,1])*c[1,]
c[2,2]=round(c[2,2])
print(c)
print('hence, x1+x2=0')
print('Eigenvector corresponding to eigenvalue .3 is:')
ev=matrix(c(-1,1),2,1,TRUE)
print(ev)

#5.2.25b
x0=matrix(c((1/2),(1/2)),2,1,TRUE)
v1=matrix(c((3/7),(4/7)),2,1,TRUE)
md=x0-v1
print(md)
print('=')
print('(1/14)v2')