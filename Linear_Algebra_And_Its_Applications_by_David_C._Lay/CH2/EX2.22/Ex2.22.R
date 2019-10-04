#Chapter 2- Matrix Algebra
#Pivot columns
#Page No.102 / 2-40
#Prob 7
#2.9.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xs=matrix(c(2,-1),2,1,TRUE)
print(xs)
xs1=matrix(c(1.5,0.5),2,1,TRUE)
print(xs1)
b1=matrix(c(3,0),2,1,TRUE)
b2=matrix(c(-1,2),2,1,TRUE)
print(b1)
print(b2)
x=1.5*b1+0.5*b2
print(x)