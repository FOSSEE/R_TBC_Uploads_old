#Chapter 1 - Linear Equations In Linear Algebra
#Gaussian Elimination Singular case
#Page No.15 / 1-3
#Prob 7
#1.1.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is:')
av<-c(1,7,3,-4,0,1,-1,3,0,0,0,1,0,0,1,-2)
a=matrix(
  av,
  nrow=4,
  ncol=4,
  byrow=TRUE)
print(a)
print('interchange R3 and R4')
a[c(3,4),]=a[c(4,3),]
print(a)
print('from R4 we get 0=1')
print('hence, no solution')