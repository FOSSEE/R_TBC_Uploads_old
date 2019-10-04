#Chapter 6- Orthogonality and Least Squares
#Page No.212 / 6-20
#Prob 1
#6.7.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

ipx=matrix(c(4,1,1),3,1,TRUE)
ipy=matrix(c(5,1,1),3,1,TRUE)
x=matrix(c(1,1),2,1,TRUE)
y=matrix(c(5,-1),2,1,TRUE)
print('x')
print(x)
print('y')
print(y)
print('x^2=')
xs=sqrt((ipx[1]*x[1]*x[1])+(ipy[1]*x[2]*x[2]))
ys=sqrt((ipx[1]*y[1]*y[1])+(ipy[1]*y[2]*y[2]))
print('||x||^2')
print(xs)
print('||y||^2')
print(ys)
print('||<x,y>||^2')
xys=((ipx[1]*x[1]*y[1])+(ipy[1]*x[2]*y[2]))^2
print(xys)
