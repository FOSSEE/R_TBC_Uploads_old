#Chapter 7 - Symmetric Matrices And Quadratic Forms
#The Singular Value Decomposition
#Page No.232 / 7-12
#Prob 1
#7.4.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(1,0,0,-3),2,2,TRUE)
print('A=')
print(a)
print('ATA')
ata=t(a) %*% a
print(ata)
eig=eigen(ata)
eigv<-eig$values
print('eigen values are:')
print(eigv)
print('eigen vectors are:')
print('for lambda=9')
print(eig$vectors[,1])
print('for lambda=1')
print(-eig$vectors[,2])
r1=eig$vectors[,1]
r2=-eig$vectors[,2]
V=cbind(r1,r2)
print('V=')
print(V)
sv1=sqrt(eigv[1])
sv2=sqrt(eigv[2])
print('Singular values are:')
print(sv1)
print(sv2)
sigmam=matrix(c(sv1,0,0,sv2),2,2,TRUE)
print('The matrix is the same shape as A=')
print(sigmam)
Av1=a %*% r1
Av2=a %*% r2
print('Av1=')
print(Av1)
print('Av2=')
print(Av2)
u1=Av1/sv1
u2=Av2/sv2
print('normalize:')
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