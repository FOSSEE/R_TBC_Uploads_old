#Chapter 6- Orthogonality and Least Squares
#Orthogonal basis
#Page No.195 / 6-3
#Prob 7
#6.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('vectors u1 u2 and x are:')
u1=matrix(c(2,-3),2,1,TRUE)
u2=matrix(c(6,4),2,1,TRUE)
x=matrix(c(9,-7),2,1,TRUE)
print('x')
print(x)
print('u1')
print(u1)
print('u2')
print(u2)
print('u1.u2=')
print(t(u1) %*% u2)
print('u1.u2=0, {u1 u2} is an orthogonal set')
print('Hence {u1 u2} forms a basis of R2')
print('x can be written as: x=a*u1+b*u2')
print('where a=(x.u1)/(u1.u1)')
u1p1=(x * u1)
u1p2=(u1 * u1)
u1m=(u1p1[1]+u1p1[2])/(u1p2[1]+u1p2[2])
u2p1=(x * u2)
u2p2=(u2 * u2)
u2m=(u2p1[1]+u2p1[2])/(u2p2[1]+u2p2[2])
x1=(u1m * u1)
x2=(u2m * u2)
x=x1+x2
print('x1=')
print(x1)
print('x2=')
print(x2)
print('x=')
print(x)