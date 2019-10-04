#Chapter 2- Matrix Algebra
#Invertible matrix
#Page No.73 / 2-11
#Prob 7
#2.3.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(-1,-3,0,1,3,5,8,-3,-2,-6,3,2,0,-1,2,1)
a=matrix(av,4,4,TRUE)
print(a)
a[1,]=a[1,]*-1
a[2,]=a[2,]-3*a[1,]
a[3,]=a[3,]+2*a[1,]
a[1,]=a[1,]*-1
print(a)
a[4,]=4*a[4,]-a[2,]
a[4,]=a[4,]/4
print(a)