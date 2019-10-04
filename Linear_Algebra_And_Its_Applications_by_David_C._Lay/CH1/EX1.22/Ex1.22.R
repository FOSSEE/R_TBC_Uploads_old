#Chapter 1 - Linear Equations In Linear Algebra
#Linear dependence of vectors
#Page No.43 / 1-31
#Prob 7
#1.7.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is')
Av1<-c(1,4,-3,0,0,-2,7,5,1,0,-4,-5,7,-5,0)
A1=matrix(Av1,
         nrow=3,
         ncol=5,
         byrow=TRUE)
print(A1)
Av2<-c(1,4,-3,0,0,0,1,-1,1,0,0,11,-5,5,0)
A2=matrix(Av2,
         nrow=3,
         ncol=5,
         byrow=TRUE)
print(A2)
Av3<-c(1,4,-3,0,0,0,1,-1,1,0,0,0,6,-6,0)
A3=matrix(Av3,
         nrow=3,
         ncol=5,
         byrow=TRUE)
print(A3)
print('since there are three rows, the maximum number of pivots can be 3')
print('hence, at least one of the four variable must be free')
print('so the equations have non trivial solution and the columns of A are linearly independent')