#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Quadratic Form
#Page No.226 / 7-6
#Prob 1
#7.2.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix A and vector x')
a = matrix(
  c(5,(1/3),(1/3),1),
  nrow = 2,
  ncol = 2,
  byrow = TRUE)

print('A=')
print(a)

x = matrix(
  c(6,1),
  nrow = 2,
  ncol = 1,
  byrow = TRUE)
print('x=')
print(x)

print('Product of transpose of x and A and x=')
tx=t(x)
p=tx %*% a %*% x
print(p)
print('New value of vector x=')

x = matrix(
  c(1,3),
  nrow = 2,
  ncol = 1,
  byrow = TRUE)

print(x)
print('Product of transpose of x and A and x=')
tx1=t(x)
p=tx1  %*% a %*% x
print(p)