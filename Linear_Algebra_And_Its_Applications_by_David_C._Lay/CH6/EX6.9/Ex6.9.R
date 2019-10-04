#Chapter 6- Orthogonality and Least Squares
#Orthogonal projection
#Page No.198 / 6-6
#Prob 7
#6.3.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Vectors u1 u2 and y are')
u1=matrix(c(1,3,-2),3,1,TRUE)
u2=matrix(c(5,1,4),3,1,TRUE)
y=matrix(c(1,3,5),3,1,TRUE)
print('y=')
print(y)
print('u2=')
print(u2)
print('u1=')
print(u1)
print('u1.u2=')
a=t(u1) %*% u2
print('=')
print(a)
print('Hence, {u1 u2} form an orthogonal basis.')
print('Let W=span{u1 u2}')
print('Therefore, projection of y on W is:')
print('((y.u1)/(u1.u1))*u1+((y.u2)/(u2.u2))*u2')
a1=t(y) %*% u1
a2=t(u1) %*% u1
b1=t(y) %*% u2
b2=t(u2) %*% u2
print('=')
bv=(b1/b2)
av=(a1/a2)
print(bv[1]*u2)
print('Therefore, projection of y on W is:')
ypy=y-bv[1]*u2
print(ypy)
ypy=ypy/ypy[2]
print(ypy)