#Chapter 1 - Linear Equations In Linear Algebra
#Gaussian Elimination
#Page No.15 / 1-3
#Prob 1
#1.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('performing Gaussian elimination')
av<-c(1,5,-2,-7)
a=matrix(av,
         nrow=2,
         ncol=2,
         byrow=TRUE)
print('the co-efficient matrix is:')
print(a)
bv<-c(7,-5)
b=matrix(
  bv,
  nrow=2,
  ncol=1,
  byrow=TRUE)
cm=cbind(a,b)
print('the augmented matrix is:')
print(cm)
print('R2=R2+2*R1')
cm[2,]=cm[2,]+2*cm[1,]
print(cm)
print('R2=(1/3)*R2')
cm[2,]=(1/3)*cm[2,]
print(cm)
print('R1=R1-5*R2')
cm[1,]=cm[1,]-5*cm[2,]
print(cm)
x1=cm[1,3]/cm[1,1]
x2=cm[2,3]/cm[2,2]
cat('the solution is: x1 =',x1,' x2 =',x2)