#Chapter 1 - Linear Equations In Linear Algebra
#General solution of the system
#Page No.20 / 1-8
#Prob 7
#1.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is')
av<-c(1,3,4,7,3,9,7,6)
a=matrix(av,
         nrow = 2,
         ncol=4,
         byrow=TRUE)
print(a)
print('R2=R2-3*R1')
a[2,]=a[2,]-3*a[1,]
print(a)
print('(-1/5)*R2')
a[2,]=(-1/5)*a[2,]
print(a)
print('R1=R1-4*R2')
a[1,]=a[1,]-4*a[2,]
print('the row reduced form is:')
print(a)
print('corresponding equations are')
print('x1+3*x2=-5 and x3=3')
print('free variables:x2')
print('general solution is:')
print('x1=-5-3*x2, x2, x3=3')
