#Chapter 4- Vector Spaces
#Gaussian Elimination
#Page No.132 / 4-12
#Prob 7
#4.4.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('vector x=')
x=matrix(c(8,-9,6),3,1,TRUE)
print(x)
print('the given basis is:')
b1=matrix(c(1,-1,-3),3,1,TRUE)
b2=matrix(c(-3,4,9),3,1,TRUE)
b3=matrix(c(2,-2,4),3,1,TRUE)
print('b1=')
print(b1)
print('b2=')
print(b2)
print('b3=')
print(b3)
print('to solve the vector equation')
print('an augmented matrix is formed')
av<-c(1,-3,2,8,-1,4,-2,-9,-3,9,4,6)
a=matrix(av,3,4,TRUE)
print('A=')
print(a)
print('performing row operations')
a[2,]=a[2,]-(a[2,1]/a[1,1])*a[1,]
a[3,]=a[3,]-(a[3,1]/a[1,1])*a[1,]
print(a)
a[3,]=a[3,]/a[3,3]
a[1,]=a[1,]-2*a[3,]
print(a)
a[1,]=a[1,]+3*a[2,]
print(a)
print('Xb=')
print(a[,4])