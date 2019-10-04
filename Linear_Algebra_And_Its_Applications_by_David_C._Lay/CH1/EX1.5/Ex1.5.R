#Chapter 1 - Linear Equations In Linear Algebra
#Consistent System
#Page No.16 / 1-4
#Prob 25
#1.1.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the co-efficient matrix is:')
av<-c(1,-4,7,0,3,-5,-2,5,-9)
a=matrix(av,
         nrow = 3,
         ncol = 3,
         byrow = TRUE)
print(a)
print('let g,h,k be the constants on RHS')
print('R3=R3+2*R1')
a[3,]=a[3,]+2*a[1,]
print(a)
print('the constants on RHS are:g,h,k+2g')
print('R3=R3+R2')
a[3,]=a[3,]+a[2,]
print(a)
print('the constants on RHS are:g,h,k+2g+h')
print('for solution to exist')
print('from R3:k+2g+h=0')
