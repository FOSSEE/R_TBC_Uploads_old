#Chapter 1 - Linear Equations In Linear Algebra
#General solution of the system 
#Page No.34 / 1-22
#Prob 7
#1.5.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is:')
av<-c(1,3,-3,7,0,0,1,-4,5,0)
a=matrix(av,
         nrow=2,
         ncol=5,
         byrow=TRUE)
print(a)
print('R1=R1-3*R2')
a[1,]=a[1,]-3*a[2,]
print(a)
print('basic variables:x1 x2')
print('free variables:x3 x4')
print('x1=-9*x3+8*x4')
print('x2=4*x3-5*x4')
print('hence, solution is')
print('[-9*x3+8*x4 4*x3-5*x4 x3 x4]')
uv<-c(-9,4,1,0)
vv<-c(8,-5,0,1)
u=matrix(uv,
  nrow=4,
  ncol=1,
  byrow=TRUE
)
v=matrix(vv,
         nrow=4,
         ncol=1,
         byrow=TRUE
)
print('The solution set is the same as Span{u,v}')
print('u=')
print(u)
print('v=')
print(v)