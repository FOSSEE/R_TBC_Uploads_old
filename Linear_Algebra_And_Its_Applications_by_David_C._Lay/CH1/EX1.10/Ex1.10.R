#Chapter 1 - Linear Equations In Linear Algebra
#Determine if b is in W
#Page No.25 / 1-13
#Prob 25
#1.3.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(1,0,-4,4,0,3,-2,1,-2,6,3,-4)

a=matrix(
  av,
  nrow=3,
  ncol=4,
  byrow=TRUE
)

print('the augmented matrix is:')
print(a)

print('R3=R3+2*R1')
a[3,]=a[3,]+2*a[1,]
print(a)
print('R3=R3-2*R2')
a[3,]=a[3,]-2*a[2,]
print(a)