#Chapter 4- Vector Spaces
#Change of Basis
#Page No.152 / 4-32
#Prob 1
#4.9.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

p=matrix(c(.7,.6,.3,.4),2,2,TRUE)
x1m=matrix(c(1,0),2,1,TRUE)
x2m=matrix(c(.7,.3),2,1,TRUE)
print('x1m')
print(x1m)
print('x2m')
print(x2m)
x1=p %*% x1m
x2=p %*% x2m
print('x1')
print(x1)
print('x2')
print(x2)