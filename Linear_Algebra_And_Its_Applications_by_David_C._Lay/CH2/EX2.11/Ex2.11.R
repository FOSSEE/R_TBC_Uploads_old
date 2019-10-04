#Chapter 2- Matrix Algebra
#LU decomposition of a matrix
#Page No.84 / 2-22
#Prob 13
#2.5.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix is:')
av<-c(1,3,-5,-3,-1,-5,8,4,4,2,-5,-7,-2,-4,7,5)
a=matrix(av,4,4,TRUE)
d=a
print(a)
print('performing row operations')
p21=a[2,1]/a[1,1]
p31=a[3,1]/a[1,1]
p41=a[4,1]/a[1,1]
a[2,]=a[2,]-p21*a[1,]
a[3,]=a[3,]-p31*a[1,]
a[4,]=a[4,]-p41*a[1,]
print(a)
p32=a[3,2]/a[2,2]
p42=a[4,2]/a[2,2]
a[3,]=a[3,]-p32*a[2,]
a[4,]=a[4,]-p42*a[2,]
print(a)
print('thus, lower triangular matrix is:')
v1=matrix(c(1,0,0,0),1,4,TRUE)
v2=matrix(c(p21,1,0,0),1,4,TRUE)
v3=matrix(c(p31,p32,1,0),1,4,TRUE)
v4=matrix(c(p41,p42,0,1),1,4,TRUE)
L=rbind(v1,v2,v3,v4)
print('L=')
print(L)
print('Upper triangular matrix is:')
print('U=')
print(a)