#Chapter 1 - Linear Equations In Linear Algebra
#Gaussian Elimination with row exchange
#Page No.15 / 1-3
#Prob 13
#1.1.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is')
av<-c(1,0,-3,8,2,2,9,7,0,1,5,-2)
a=matrix(
  av,
  nrow=3,
  ncol=4,
  byrow=TRUE)
print(a)
print('R2=R2-2*R1')
a[2,]=a[2,]-2*a[1,]
print(a)
print('interchange R2 and R3')
a[c(2,3),]=a[c(3,2),]
print(a)
print('R3=R3-2*R2')
a[3,]=a[3,]-2*a[2,]
print(a)
print('R3=(1/5)*R3')
a[3,]=(1/5)*a[3,]
print(a)
print('R2=R2-5*R3 and R1=R1+3*R3')
a[2,]=a[2,]-5*a[3,]
a[1,]=a[1,]+3*a[3,]
print(a)
s=matrix(
  c(a[1,4],a[2,4],a[3,4]),
  nrow=3,
  ncol=1,
  byrow=TRUE)
print('solution is')
print(s)