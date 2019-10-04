#Chapter 1 - Linear Equations In Linear Algebra
#General solution of the system 
#Page No.34 / 1-22
#Prob 11
#1.5.11

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is')
av<-c(1,-4,-2,0,3,-5,0,0,0,1,0,0,-1,0,0,0,0,0,-1,4,0,0,0,0,0,0,0,0)
a=matrix(av,
         nrow=4,
         ncol=7,
         byrow=TRUE)
print(a)
print('R1=R1-3*R3')
a[1,]=a[1,]-3*a[3,]
print(a)
print('R1=R1+2*R2')
a[1,]=a[1,]+2*a[2,]
print(a)
print('the free variables are:x2, x4 and x6')
print('the basic variables are:x1, x3 and x5')
print('the solution is:')
print('[4*x2-5*x6  x2  x6  x4  4*x6  x6]')