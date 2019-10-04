#Chapter 5- Eigenvalues and Eigenvectors
#Page No.181 / 5-25
#Prob 13
#5.6.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(.8,.3,-.4,1.5),2,2,TRUE)
print(a)
print('eigen values are')
eig=eigen(a)
print(eig$values)
zm=matrix(0,2,1,TRUE)
c1=a-1.2*diag(2)
m1=cbind(c1,zm)
print(m1)
m1[2,]=m1[2,]-m1[1,]
m1[2,]=round(m1[2,])
m1[1,]=m1[1,]/(-4)
print(m1)