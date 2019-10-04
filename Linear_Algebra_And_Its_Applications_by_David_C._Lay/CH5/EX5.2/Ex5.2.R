#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalue of a matrix
#Page No.158 / 5-2
#Prob 7
#5.1.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To check if 4 is an eigenvalue of matrix A')
av<-c(3,0,-1,2,3,1,-3,4,5)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
print('Therefore')
print('A-4I=')
print(a-4*diag(3))
b=a-4*diag(3)
print('to check the invertibility of A-4I, form an augmented matrix')
zm=matrix(0,3,1,TRUE)
c=cbind(b,zm)
print(c)
print('performing row operations')
c[2,]=c[2,]+2*c[1,]
c[3,]=c[3,]-3*c[1,]
print(c)
c[3,]=c[3,]+4*c[2,]
print(c)
print('We can see that there exists a non trivial solution.')
print('Hence, 4 is an eigenvalue of A.')
print('For the eigenvector, -x1-x3=0 and -x2-x3=0')
print('If x3=1,')
x=matrix(c(-1,-1,1),3,1,TRUE)
print('x=')
print(x)