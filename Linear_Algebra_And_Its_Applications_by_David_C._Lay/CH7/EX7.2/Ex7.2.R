#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Orthogonal Matrix
#Page No.222 / 7-2
#Prob 7
#7.1.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To show that the given matrix P is orthogonal.')
p = matrix(
  c(0.6,0.8,0.8,-0.6),
  nrow = 2,
  ncol = 2,
  byrow = TRUE)

print('P=')
print(p)
print('P is composed of two vectors.')
p1 = matrix(
  c(0.6,0.8),
  nrow = 2,
  ncol = 1,
  byrow = TRUE)

p2 = matrix(
  c(0.8,-0.6),
  nrow = 2,
  ncol = 1,
  byrow = TRUE)

print('p1=')
print(p1)
print('p2=')
print(p2)
print('To show that the columns are orthonormal')
print('p1.p2=')
s1=p1 * p2
s=s1[1]+s1[2]
r=t(p1)
print(s)
if(s==0)
  print('The columns of P are orthonormal')
end
print('||p1||^2=')
print(sqrt(p[1,1]^2+p[2,1]^2))
print('||p2||^2=')
print(sqrt(p[1,2]^2+p[2,2]^2))
print('Hence, ||p1||=||p2||=1. Thus P is an orthogonal matrix')