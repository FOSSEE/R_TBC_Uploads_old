#Chapter 7 - Symmetric Matrices And Quadratic Forms
#PD decomposition of a matrix
#Page No.222 / 7-2
#Prob 13
#7.1.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To diagonalize the given matrix A')

#Declaration of matrix
a = matrix(
  c(3,1,1,3),
  nrow = 2,
  ncol = 2,
  byrow = TRUE)

print('A=')
print(a)
eig=eigen(a)
values <- eig$values
print('Eigen values of A are:')
print(values)
print('for lambda=4')
print('A-4I=')
print(a-4*diag(2))
b=a-4*diag(2)
print('To find the eigenvector, form an augmented matrix.')
zm=matrix(
  c(0,0),
  nrow=2,
  ncol=1,
  byrow=TRUE)

c=cbind(b,zm)
print('performing row operations')
print(c)

c[2,]=c[2,]+c[1,]
print(c)
print('With x2 as free variable, x1=x2')
print('Hence a basis for the eigenspace is:')
d=matrix(
  c(1,1),
  nrow=2,
  ncol=1,
  byrow=TRUE)

print(d)
print('Upon normalizing')
print(d/(sqrt(2)))
u1=d/(sqrt(2))
print('for lambda=2')
print('A-2I=')
b=a-2*diag(2)
print(b)
print('To find the eigenvector, form an augmented matrix.')
c=cbind(b,zm)
print('performing row operations')
print(c)
c[2,]=c[2,]-c[1,]
print(c)
print('With x2 as free variable, x1=-x2')
print('Hence a basis for the eigenspace is:')
d=matrix(
  c(-1,1),
  nrow=2,
  ncol=1,
  byrow=TRUE)

print(d)
print('Upon normalizing')
print(d/(sqrt(2)))
u2=d/(sqrt(2))
print('Matrix P=')
p=cbind(u1,u2)
print(p)
print('The corresponding matrix D=')

D1=matrix(
  c(values[1],0),
  nrow=1,
  ncol=2,
  byrow=TRUE)

D2=matrix(
  c(0,values[2]),
  nrow=1,
  ncol=2,
  byrow=TRUE)


D = matrix(
  c(D1,D2),
  nrow=2,
  ncol=2,
  byrow = TRUE)
print(D)