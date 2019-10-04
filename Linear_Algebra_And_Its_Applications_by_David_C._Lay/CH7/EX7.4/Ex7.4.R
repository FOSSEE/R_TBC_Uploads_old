#Chapter 7 - Symmetric Matrices And Quadratic Forms
#PD decomposition of a matrix
#Page No.223 / 7-3
#Prob 19
#7.1.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('PD decomposition of a matrix A')
av<-c(3,-2,4,-2,6,2,4,2,3)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
print('Eigenvalues of A are')
eig=eigen(a)
evv=eig$values
print(evv) 
cat('for lambda =',evv[1])
print('A-(lambda)I=')
b=a-evv[1]*diag(3)
print(b)
print('To find eigenvector, form an augmented matrix')
zm=matrix(0,3,1,TRUE)
cm=cbind(b,zm)
print(cm)
print('performing row operations')
cm[2,]=cm[2,]-(cm[2,1]/cm[1,1])*cm[1,]
cm[3,]=cm[3,]-(cm[3,1]/cm[1,1])*cm[1,]
cm[1,]=cm[1,]/-4
print(cm)
print('With x2 and x3 as free variables, we get two vectors.')
print('x1=-.5x2+x3')
print('Thus, the two vectors are')
v1=matrix(c(-1,2,0),3,1,TRUE)
v2=matrix(c(1,0,1),3,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('Orthogonalizing v1 and v2')
print('Let x1=v1')
print('x2=v2-((v2.v1)/(v1.v1))*v1')
x1=v1
a1=t(v2) %*% v1
a2=t(v1) %*% v1
av=(a1/a2)
x2=v2-av[1]*v1
x1=x1/(sqrt(x1[1,1]^2+x1[2,1]^2+x1[3,1]^2))
u1=x1
x1=x2/(sqrt(x2[1,1]^2+x2[2,1]^2+x2[3,1]^2))
print(x2)
x2=x2*5
print(x2)
print('An orthonormal basis is:')
print('u1=')
print(u1)
print('u2=')
print(x1)
cat('for lambda=',evv[3])
print('A-(lambda)I=')
b1=a-evv[3]*diag(3)
print(b1)
print('To find eigenvector, form an augmented matrix')
cm1=cbind(b1,zm)
print(cm1)
print('performing row operations')
cm1[2,]=cm1[2,]/2
cm1[c(1,2),]=cm1[c(2,1),]
cm1[1,]=cm1[1,]/-1
print(cm1)
cm1[2,]=round(cm1[2,]-5*cm1[1,])
cm1[3,]=cm1[3,]-4*cm1[1,]
print(cm1)
cm1[3,]=round(cm1[3,]-cm1[2,])
cm1[2,]=cm1[2,]/18
print(cm1)
cm1[1,]=round(cm1[1,]+4*cm1[2,])
print(cm1)
print('With x3 as free variable')
print('x1=x3 and x2=-.5x3')
print('Thus a basis for the eigenspace is:')
v3=matrix(c(-2,-1,2),3,1,TRUE)
print(v3)
print('upon normalizing')
v3=v3/(sqrt(v3[1,1]^2+v3[2,1]^2+v3[3,1]^2))
print(v3)
print('Thus, matrix P=')
print(cbind(u1,x1,v3))
print('Corresponding matrix D=')
D1=cbind(evv[1],0,0)
D2=cbind(0,evv[2],0)
D3=cbind(0,0,evv[3])
D=rbind(D1,D2,D3)
print(D)