#Chapter 6- Orthogonality and Least Squares
#Orthogonal projection
#Page No.198 / 6-6
#Prob 1
#6.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Given vectors are:')
u1=matrix(c(0,1,-4,-1),4,1,TRUE)
print('u1')
print(u1)
u2=matrix(c(3,5,1,1),4,1,TRUE)
print('u2')
print(u2)
u3=matrix(c(1,0,1,-4),4,1,TRUE)
print('u3')
print(u3)
u4=matrix(c(5,-3,-1,1),4,1,TRUE)
print('u4')
print(u4)
x=matrix(c(10,-8,2,0),4,1,TRUE)
print('x')
print(x)
print('The vector in span{u4}=((x.u4)/(u4.u4))*u4')
a1=t(x) %*% u4
a2=t(u4) %*% u4
av=(a1/a2)
print(av[1]*u4)
print('Therefore, the vector in span{u1 u2 u3}=x-2*u4')
print(x-2*u4)