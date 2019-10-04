#Chapter 4- Vector Spaces
#Matrix operation
#Page No.132 / 4-12
#Prob 1
#4.4.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xb=matrix(c(5,3),2,1,TRUE)
print(xb)
b1=matrix(c(3,-5),2,1,TRUE)
b2=matrix(c(-4,6),2,1,TRUE)
x=5*b1+3*b2
print(x)