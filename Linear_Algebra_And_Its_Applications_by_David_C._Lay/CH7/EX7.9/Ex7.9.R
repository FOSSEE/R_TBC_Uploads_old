#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Page No.229 / 7-9
#Prob 7
#7.3.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(-2,2,0,2,-1,2,0,2,0)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
eig=eigen(a)
eigv<-eig$values
print('eigen values are:')
print(eigv)
print('2 is the greatest eigen value')
eigve<-eig$vectors[,1]
v1=eigve/eigve[3]
print('v1=')
print(v1)
v1=v1*2
print('scaled v1=')
print(v1)
print('u1=')
print(eigve)