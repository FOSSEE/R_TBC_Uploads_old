#Chapter 7 - Symmetric Matrices And Quadratic Forms
#The Singular Value Decomposition
#Page No.233 / 7-13
#Prob 13
#7.4.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(3,2,2,2,3,-2)
a=matrix(av,2,3,TRUE)
print(a)
aat=a %*% t(a)
print(aat)
eig=eigen(aat)
eigv<-eig$values
print('eigen values are')
print(eigv)
v1=eig$vectors[,1]
v2=eig$vectors[,2]
print('eigen vectors are')
print('for lambda=25')
print(v1)
print('for lambda=9')
print(v2)
V=cbind(v1,v2)
print(V)
sv1=sqrt(eigv[1])
sv2=sqrt(eigv[2])
print('singular values are')
print(sv1)
print(sv2)
zm=matrix(0,1,2,TRUE)
c1=matrix(c(sv1,0),1,2,TRUE)
c2=matrix(c(0,sv2),1,2,TRUE)
sigmam=rbind(c1,c2,zm)
print(sigmam)
print(t(a) %*% V)
u1=(t(a) %*% v1)/sv1
u2=(t(a) %*% v2)/sv2
print('u1=')
print(u1)
print('u2=')
print(u2)
u3=matrix(c((-2/3),(2/3),(1/3)),3,1,TRUE)
print('u3=')
print(u3)
u=cbind(u1,u2,u3)
print('A=')
print(V)
print('*')
print(t(sigmam))
print('*')
print(t(u))