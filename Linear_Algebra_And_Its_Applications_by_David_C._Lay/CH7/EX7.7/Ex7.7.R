#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Page No.227 / 7-7
#Prob 13
#7.2.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(1,-3,-3,9),2,2,TRUE)
print('A=')
print(a)
eig=eigen(a)
eigv<-round(eig$values)
print('Eigen values are:')
print(eigv)
ev=eig$vectors
ev1=(ev[,1]/(ev[1,1]))
print('For lambda=10')
print('an eigen vector is')
print(ev1)
print('normalized u1=')
print(-eig$vectors[,1])
ev2=(ev[,2]/(ev[1,1]))
print('For lambda=0')
print('an eigen vector is')
print(ev2)
print('normalized u2=')
print(-eig$vectors[,2])
pm=-eig$vectors
print('P=')
print(pm)
Dm=t(pm) %*% a %*% pm
print('D=')
print(round(Dm))