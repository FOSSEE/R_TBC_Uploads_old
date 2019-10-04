#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Page No.229 / 7-9
#Prob 1
#7.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(5,2,0,2,6,-2,0,-2,7)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
eig=eigen(a)
eigv<-eig$values
print('eigen values are:')
print(eigv)
print('for lambda=9')
print('normalized eigenvector u1=')
print(-eig$vectors[,1])
print('for lambda=6')
print('normalized eigenvector u2=')
print(eig$vectors[,2])
print('for lambda=3')
print('normalized eigenvector u3=')
print(-eig$vectors[,3])
print('x=Py')
print('P=')
p1=-eig$vectors[,1]
p2=eig$vectors[,2]
p3=-eig$vectors[,3]
p=cbind(p1,p2,p3)
print(p)