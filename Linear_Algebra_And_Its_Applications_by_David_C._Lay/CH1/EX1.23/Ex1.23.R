#Chapter 1 - Linear Equations In Linear Algebra
#Introduction to Linear Transformations
#Page No.46 / 1-34
#Prob 1
#1.8.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

Av<-c(2,0,0,2)
uv<-c(1,-3)
A=matrix(Av,
         nrow=2,
         ncol=2,
         byrow=TRUE)
u=matrix(uv,
         nrow=2,
         ncol=1,
         byrow=TRUE)
print(A)
print(u)
T=A %*% u
print(T)