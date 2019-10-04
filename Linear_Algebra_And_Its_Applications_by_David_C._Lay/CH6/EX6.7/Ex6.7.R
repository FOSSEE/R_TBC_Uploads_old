#Chapter 6- Orthogonality and Least Squares
#Orthonormal vectors
#Page No.196 / 6-4
#Prob 19
#6.2.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given vectors u and v are:')
u=matrix(c(-.6,.8),2,1,TRUE)
v=matrix(c(.8,.6),2,1,TRUE)
print('u')
print(u)
print('v')
print(v)
uvv=u*v
uvv=uvv[1]+uvv[2]
print('u.v=')
print(uvv)
uuv=u*u
uuv=uuv[1]+uuv[2]
print('u.u=')
print(uuv)
vvv=v*v
vvv=vvv[1]+vvv[2]
print('v.v=')
print(vvv)
print('Hence, {u v} is an orthogonal set.')
print('||u||=1 and ||v||=1')
print('Thus, {u v} is an orthonormal set')