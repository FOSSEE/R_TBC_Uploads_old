#Chapter 5- Eigenvalues and Eigenvectors
#Diagonalization of a matrix
#Page No.167 / 5-11
#Prob 13
#5.3.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Given matrix A=')
av<-c(2,2,-1,1,3,-1,-1,-2,2)
a=matrix(av,3,3,TRUE)
print(a)
print('Given its eigen values are 5 and 1')
print('for lambda=5')
print('A-5I=')
b=a-5*diag(3)
print(b)
print('performing row operations')
zm=matrix(0,3,1,TRUE)
cm=cbind(b,zm)
print(cm)
cm[c(1,2),]=cm[c(2,1),]
print(cm)
cm[2,]=cm[2,]+3*cm[1,]
cm[3,]=cm[3,]+cm[1,]
print(cm)
cm[3,]=cm[3,]-cm[2,]
print(c)
cm[2,]=cm[2,]/cm[2,2]
cm[1,]=cm[1,]+2*cm[2,]
print(cm)
print('With x3 as free variable, x1=-x3 and x2=-x3')
print('Hence, for lambda=5 eigenvector is:')
u1=matrix(c(-1,-1,1),3,1,TRUE)
print(u1)
print('for lambda=1')
print('A-I=')
b=a-diag(3)
print(b)
print('performing row operations')
cn=cbind(b,zm)
print(cn)
cn[2,]=cn[2,]-cn[1,]
cn[3,]=cn[3,]+cn[1,]
print(cn)
print('With x2 and x3 as free variables, eigen vectors corresponding to lambda=1 are')
u2=matrix(c(-2,1,0),3,1,TRUE)
u3=matrix(c(1,0,1),3,1,TRUE)
print(u2)
print(u3)
print('Hence, matrix P=')
pm=cbind(u1,u2,u3)
print(pm)
print('and matrix D=')
Dm=matrix(c(5,0,0,0,1,0,0,0,1),3,3,TRUE)
print(Dm)