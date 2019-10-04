#Chapter 2- Matrix Algebra
#Application of matrix algebra
#Page No.93 / 2-31
#Prob 7
#2.7.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the matrix in R2 to rotate a vector by 60 degrees is:')
av<-c(cos(pi/3),-sin(pi/3),sin(pi/3),cos(pi/3))
a=matrix(av,2,2,TRUE)
print(a)
x=matrix(c(6,8),2,1,TRUE)
print('x=')
print(x)
print('so the 3X3 matrix for rotation about x is:')
yv<-c(1,0,6,0,1,8,0,0,1)
y=matrix(yv,3,3,TRUE)
zv<-c(1,0,-6,0,1,-8,0,0,1)
z=matrix(zv,3,3,TRUE)
av<-c(cos(pi/3),-sin(pi/3),0,sin(pi/3),cos(pi/3),0,0,0,1)
a=matrix(av,3,3,TRUE)
R=y %*% (a %*% z)
print(R)