#Chapter 1 - Linear Equations In Linear Algebra
#Linear Combination of two vectors
#Page No.23 / 1-11
#Prob 1
#1.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

uv<-c(-1,2)
u=matrix(uv,
         nrow=2,
         ncol=1,
         byrow=TRUE)
print('u=')
print(u)
vv<-c(-3,-1)
v=matrix(vv,
         nrow=2,
         ncol=1,
         byrow=TRUE)
print('v=')
print(v)
a=u+v
print('u+v=')
print(a)
s=u-2*v
print('u-2v=')
print(s)