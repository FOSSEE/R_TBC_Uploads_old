#Chapter 2- Matrix Algebra
#Matrix operation
#Page No.96 / 2-34
#Prob 13
#2.8.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(3,2,1,-5,0,-9,-4,1,7,0,9,2,-5,1,0)
a=matrix(av,3,5,TRUE)
print(a)
a[2,]=a[2,]+a[3,]
a[2,]=a[2,]/(-1)
a[3,]=a[3,]-3*a[1,]
print(a)
a[3,]=a[3,]+2*a[2,]
print(a)
a[2,]=a[2,]/2
print(a)
a[1,]=a[1,]-2*a[2,]
a[1,]=a[1,]/3
print(a)
print('the generalsolution is x1=x3-x4')
print('and x2=-2x3+4x4')
print('x3 and x4 are free')
print('if x3=1 and x4=0')
print('vector is (1,-2,1,0)')
print('if x3=0 and x4=1')
print('vector is (-1,4,0,1)')