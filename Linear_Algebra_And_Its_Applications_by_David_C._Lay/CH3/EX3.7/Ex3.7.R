#Chapter 3- Determinants
#Determinant of a matrix
#Page No.112 / 3-6
#Prob 13
#3.2.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(2,5,4,1,4,7,6,2,6,-2,-4,0,-6,7,7,0)
a=matrix(av,4,4,TRUE)
print('A=')
print(a)
print('performing row operations')
a[2,]=a[2,]-2*a[1,]
print(a)
print('using cofactor expansion about fourth column')
a<-a[-(1),]
a<-a[,-(4)]
print('det(A)= -1 X')
print('det')
print(a)
print('performing row operations')
a[3,]=a[3,]+a[2,]
print(a)
print('using cofactor expansion about first column')
a<-a[-(2),]
a<-a[,-(1)]
print('det(A)= -1 X -6 X')
print('det')
print(a)
print('=')
print(6*det(a))