#Chapter 1 - Linear Equations In Linear Algebra
#General solution of the system
#Page No.20 / 1-8
#Prob 13
#1.2.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is')
av<-c(1,-3,0,-1,0,-2,0,1,0,0,-4,1,0,0,0,1,9,4,0,0,0,0,0,0)
a=matrix(av,
        nrow=4,
        ncol=6,
        byrow=TRUE)
print(a)
print('R1=R1+R3')
a[1,]=a[1,]+a[3,]
print(a)
print('R1=R1+3*R2')
a[1,]=a[1,]+3*a[2,]
print(a)
print('corresponding equations are:')
print('x1-3*x5=5, x2-4*x5=1, x4+9*x5=4, and 0=0')
print('free variables:x3, x5')
print('general solution is:')
print('x1=5+3*x5, x2=1+4*x5, x3, x4=4-9*x5, x5')
