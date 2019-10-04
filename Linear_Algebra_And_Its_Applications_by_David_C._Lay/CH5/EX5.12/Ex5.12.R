#Chapter 5- Eigenvalues and Eigenvectors
#Eigen values of matrix
#Page No.168 / 5-12
#Prob 19
#5.3.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(5,-3,0,9,0,3,1,-2,0,0,2,0,0,0,0,2)
a=matrix(av,4,4,TRUE)
print(a)
eig=eigen(a)
eigv<-eig$values
print('eigen values are:')
print(eigv)
print('for lambda=2')
print('(A-2I)x=0')
zm=matrix(0,4,1,TRUE)
c1=a-2*diag(4)
m1=cbind(c1,zm)
print(m1)
m1[1,]=m1[1,]+3*m1[2,]
print(m1)
m1[1,]=m1[1,]/3
print(m1)
print('x1=x3-x4')
print('x2=-x3+2x4')
print('x3 and x4 are free')
v1=matrix(c(-1,-1,1,0),4,1,TRUE)
v2=matrix(c(-1,2,0,1),4,1,TRUE)
print('v1')
print(v1)
print('v2')
print(v2)
print('for lambda=3')
print('(A-3I)x=0')
c2=a-3*diag(4)
m2=cbind(c2,zm)
print(m2)
m2[1,]=m2[1,]/2
m2[3,]=m2[3,]+m2[2,]
m2[3,]=m2[3,]/(-2)
m2[4,]=m2[4,]+m2[3,]
m2[2,]=m2[2,]+2*m2[3,]
m2[1,]=m2[1,]+(-9/2)*m2[3,]
print(m2)
print('x1=(3/2)x2')
print('x2 is free')
print('x3 and x4 = 0')
print('choosing x2=2 produces eigen vector v3=(3,2,0,0)')
print('for lambda=5')
print('(A-5I)x=0')
c3=a-5*diag(4)
m3=cbind(c3,zm)
print(m3)
m3[1,]=m3[1,]/(-3)
m3[2,]=m3[2,]+2*m3[1,]
m3[3,]=m3[3,]+3*m3[2,]
m3[3,]=ceiling(m3[2,]/(-24))
m3[4,]=m3[4,]+3*m3[3,]
m3[2,]=m3[2,]+8*m3[3,]
m3[1,]=m3[1,]+3*m3[3,]
print(m3)
print('x1 is free')
print('x2=0')
print('x3=0')
print('x4=0')
print('a basis vector for the eigenspace is v4=(1,0,0,0)')
Pmv<-c(-1,-1,3,1,-1,2,2,0,1,0,0,0,0,1,0,0)
Pm=matrix(Pmv,4,4,TRUE)
print(Pm)
Dmv<-c(2,0,0,0,0,2,0,0,0,0,3,0,0,0,0,5)
Dm=matrix(Dmv,4,4,TRUE)
print(Dm)