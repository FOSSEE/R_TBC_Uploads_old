#Chapter 2- Matrix Algebra
#LU decomposition of a matrix
#Page No.84 / 2-22
#Prob 7
#2.5.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix is:')
av<-c(2,5,-3,-4)
a=matrix(av,2,2,TRUE)
d=a;
print(a)
print('performing row operations')
a[2,]=a[2,]-(a[2,1]/a[1,1])*a[1,]
print(a)
print(a)
print('thus, the upper triangular matrix is')
U=a;
print('U=')
print(U)
print('the lower triangular matrix is:')
c2=d[2,1]/d[1,1]
r1=matrix(c(1,c2),2,1,TRUE)
r2=matrix(c(0,1),2,1,TRUE)
L=cbind(r1,r2)
print('L=')
print(L)