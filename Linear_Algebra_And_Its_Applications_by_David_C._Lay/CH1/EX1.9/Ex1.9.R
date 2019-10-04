#Chapter 1 - Linear Equations In Linear Algebra
#Determination of Linear Combination
#Page No.25 / 1-13
#Prob 13
#1.3.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(1,-4,2,3,0,3,5,-7,-2,8,-4,-3)

a=matrix(
  av,
  nrow=3,
  ncol=4,
  byrow=TRUE
)

print('the augmented matrix is:')
print(a)

#Row reduce the augmented matrix to reach echelon form
print('R3=R3+2*R1')
a[3,]=a[3,]+2*a[1,]
print(a)
print('The system for the augmented matrix is inconsistent, so b is not a linear combination of the columns of A')