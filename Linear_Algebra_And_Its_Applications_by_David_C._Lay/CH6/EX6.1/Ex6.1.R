#Chapter 6- Orthogonality and Least Squares
#Dot product of vectors
#Page No.193 / 6-1
#Prob 1
#6.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Vectors u and v are:')
u=matrix(c(-1,2),2,1,TRUE)
v=matrix(c(4,6),2,1,TRUE)
print(u)
print(v)
u2=u * u
vu=v * u
print('u . u')
print(u2[1]+u2[2])
print('v . u')
print(vu[1]+vu[2])
print('Projection of v on u=(u.v)/(v.v)')
a=t(u) %*% v
b=t(u) %*% u
p=a/b
print('=')
print(p)