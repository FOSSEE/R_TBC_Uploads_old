#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvectors
#Page No.158 / 5-2
#Prob 13
#5.1.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To find a basis for the eigenspace')
print('Matrix A=')
av<-c(4,0,1,-2,1,0,-2,0,1)
a=matrix(av,3,3,TRUE)
print(a)
print('for lambda=1')
print('A-1I=')
b=a-diag(3)
print(b)
print('solving (A-I)x=0, we get')
print('-2*x1=0 and 3*x1+x3=0')
print('therefore, x1=x3=0')
print('which leaves x2 as a free variable')
print('Hence a basis for the eigen space is:')
es=matrix(c(0,1,0),3,1,TRUE)
print(es)
print('for lambda=2')
print('A-2I=')
b=a-2*diag(3)
print(b)
print('performing row operations on the augmented matrix')
zm=matrix(0,3,1,TRUE)
c=cbind(b,zm)
print(c)
c[2,]=c[2,]+c[1,]
c[3,]=c[3,]+c[1,]
print(c)
c[1,]=c[1,]/c[2,2]
print(c)
print('We can see that x3 is a free variable')
print('x2=x3 and x1=-.05*x3')
print('Hence, a basis for the eigenspace is:')
es1=matrix(c(1,2,2),3,1,TRUE)
print(es1)
print('for lambda=3')
print('A-3I=')
b=a-3*diag(3)
print(b)
print('performing row operations on the augmented matrix')
c=cbind(b,zm)
print(c)
c[2,]=c[2,]+2*c[1,]
c[3,]=c[3,]+2*c[1,]
print(c)
c[2,]=c[2,]/2
c[2,]=c[2,]/(-1)
print(c)
print('Again x3 is a free variable')
print('x1=-x3 and x2=x3')
print('Hence, a basis for the eigenspace is:')
es2=matrix(c(-1,1,1),3,1,TRUE)
print(es2)