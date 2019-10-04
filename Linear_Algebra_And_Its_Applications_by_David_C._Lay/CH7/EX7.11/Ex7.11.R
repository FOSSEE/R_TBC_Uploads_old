#Chapter 7 - Symmetric Matrices And Quadratic Forms
#The Singular Value Decomposition
#Page No.232 / 7-12
#Prob 7
#7.4.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(2,-1,2,2),2,2,TRUE)
print('A=')
print(a)
ata=t(a) %*% a
print('ATA=')
print(ata)
eig=eigen(ata)
print('eigen values are:')
eigv<-eig$values
print(eigv)
eigve1<-(-eig$vectors[,1])
eigve2<-(-eig$vectors[,2])
print('for lambda=9')
print(eigve1)
print('for lambda=4')
print(eigve2)
V=cbind(eigve1,eigve2)
print(V)
sv1=sqrt(eigv[1])
sv2=sqrt(eigv[2])
print('Singular values are')
print(sv1)
print(sv2)
c1<-c(sv1,0)
c2<-c(0,sv2)
sigmam=cbind(c1,c2)
av1=a %*% eigve1
av2=a %*% eigve2
print('Av1')
print(av1)
print('Av2')
print(av2)
print('Check orthogonality')
co=av1*av2
co=co[1]+co[2]
print('Av1.Av2=')
print(co)
u1=av1/sv1
u2=av2/sv2
print('u1=')
print(u1)
print('u2=')
print(u2)
um=cbind(u1,u2)
print(um)
print('A=')
print(um)
print('*')
print(sigmam)
print('*')
print(t(V))