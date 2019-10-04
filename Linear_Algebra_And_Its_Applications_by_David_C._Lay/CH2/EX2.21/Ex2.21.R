#Chapter 2- Matrix Algebra
#Pivot columns
#Page No.101 / 2-39
#Prob 1
#2.9.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xs=matrix(c(3,2),2,1,TRUE)
print(xs)
b1=matrix(c(1,1),2,1,TRUE)
b2=matrix(c(2,-1),2,1,TRUE)
print(b1)
print(b2)
x=3*b1+2*b2
print(x)