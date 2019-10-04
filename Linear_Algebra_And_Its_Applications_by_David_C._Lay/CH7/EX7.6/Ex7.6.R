#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Page No.226 / 7-6
#Prob 7
#7.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(1,5,5,1),2,2,TRUE)
print('A=')
print(a)
eig=eigen(a)
eigv<-eig$values
print('Eigen values are:')
print(eigv)
ev=eig$vectors
ev1=(ev[,1]/(ev[1,1]))
print('For lambda=6')
print('an eigen vector is')
print(ev1)
print('normalized u1=')
print(eig$vectors[,1])
ev2=(ev[,2]/(ev[1,1]))
print('For lambda=-4')
print('an eigen vector is')
print(ev2)
print('normalized u2=')
print(eig$vectors[,2])
pm=eig$vectors
print('P=')
print(pm)
Dm=t(pm) %*% a %*% pm
print('D=')
print(round(Dm))