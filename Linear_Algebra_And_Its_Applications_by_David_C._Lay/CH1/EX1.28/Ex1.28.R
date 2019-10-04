#Chapter 1 - Linear Equations In Linear Algebra
#Matrix of a linear transformation
#Page No.51 / 1-39
#Prob 21
#1.9.21

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(1,1,4,5)
bv<-c(3,8)
a=matrix(av,
         nrow=2,
         ncol=2,
         byrow=TRUE)
print('a')
print(a)
b=matrix(bv,
         nrow=2,
         ncol=1,
         byrow=TRUE)
print('b')
print(b)
A=cbind(a,b)
print('A')
print(A)
print('R2=R2-4R1')
A[2,]=A[2,]-4*A[1,]
print(A)
print('R1=R1-4R2')
A[1,]=A[1,]-A[2,]
print(A)
xv=c(7,-4)
x=matrix(xv,nrow=2,ncol=1,byrow = TRUE)
print('x=')
print(x)