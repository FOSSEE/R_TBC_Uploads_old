#Chapter 6- Orthogonality and Least Squares
#Projection of vectors
#Page No.195 / 6-3
#Prob 13
#6.2.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Vectors y and u are:')
y=matrix(c(2,3),2,1,TRUE)
u=matrix(c(4,-7),2,1,TRUE)
print('u')
print(u)
print('y')
print(y)
print('The orthogonal projection of y on u=((y.u)/(u.u))*u')
a=t(y) %*% u
b=t(u) %*% u
c1=(a/b)
c= c1[1] * u
print('=')
print(c)
print('The component of y orthogonal to u is:')
print(y-c)
print('Thus y=')
print(c+(y-c))