#Chapter 1 - Linear Equations In Linear Algebra
#Linear Models in Business, Science and Engineering
#Page No.56 / 1-44
#Prob 7
#1.10.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

r1v<-c(12,-7,0,-4)
r2v<-c(-7,15,-6,0)
r3v<-c(0,-6,14,-5)
r4v<-c(-4,0,-5,13)
r1=matrix(r1v,
          nrow=4,
          ncol=1,
          byrow=TRUE)
r2=matrix(r2v,
          nrow=4,
          ncol=1,
          byrow=TRUE)
r3=matrix(r3v,
          nrow=4,
          ncol=1,
          byrow=TRUE)
r4=matrix(r4v,
          nrow=4,
          ncol=1,
          byrow=TRUE)
print('r1')
print(r1)
print('r2')
print(r2)
print('r3')
print(r3)
print('r4')
print(r4)
R=cbind(r1,r2,r3,r4)
print(R)
vv<-c(40,30,20,-10)
v=matrix(vv,
         nrow=4,
         ncol=1,
         byrow=TRUE)
print('v')
print(v)
x<-solve(R,v)
print('the solution is')
print(x)