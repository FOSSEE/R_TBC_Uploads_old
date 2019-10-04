#Chapter 1 - Linear Equations In Linear Algebra
#Span of vectors 
#Page No.29 / 1-17
#Prob 13
#1.4.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is:')
av<-c(3,-5,0,-2,6,4,1,1,4)
a=matrix(
  av,
  nrow=3,
  ncol=3,
  byrow=TRUE
)

print(a)
print('interchange R1 and R3')
a[c(1,3),]=a[c(3,1),]
print(a)
print('R2=R2+2*R1 and R3=R3-3*R1')
a[2,]=a[2,]+2*a[1,]
a[3,]=a[3,]-3*a[1,]
print(a)
print('R3=R3+R2')
a[3,]=a[3,]+a[2,]
print(a)
print('from the entries of last row, the system is consistent')
print('hence, u is in the plane spanned by the columns of a')