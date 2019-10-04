#Chapter 4- Vector Spaces
#Rank of a matrix
#Page No.141 / 4-21
#Prob 1
#4.6.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to find the rank of matrix A')
av<-c(1,-4,9,-7,-1,2,-4,1,5,-6,10,7)
a=matrix(av,3,4,TRUE)
p=a
print('A=')
print(a)
print('performing row operations')
a[2,]=a[2,]+a[1,]
a[3,]=a[3,]-5*a[1,]
a[3,]=a[3,]+7*a[2,]
a[1,]=a[1,]-2*a[2,]
print(a)
print('It is clear that matrix A has 2 pivot columns')
print('Hence, rank(A)=2')
print('Columns 1 and 2 are pivot columns')
print('Hence, basis for C(A) is:')
cat(p[,1],'and',p[,2])
print('Basis for row space of A is:')
cat(a[1,],'and',a[2,])
print('To find the basis of N(A), solve Ax=0')
print('on solving, we get the basis of N(A) as:')
u=matrix(c(1,2.5,1,0),4,1,TRUE)
v=matrix(c(-5,-3,0,1),4,1,TRUE)
cat(v,'and',u)