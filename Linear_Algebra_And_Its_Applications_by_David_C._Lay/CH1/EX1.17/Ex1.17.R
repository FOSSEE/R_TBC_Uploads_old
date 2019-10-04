#Chapter 1 - Linear Equations In Linear Algebra
#General solution of the system 
#Page No.35 / 1-23
#Prob 13
#1.5.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xv<-c(5,-2,0)
x=matrix(xv,
         nrow=3,
         ncol=1,
         byrow=TRUE)
x1v<-c(4,-7,1)
x1=matrix(x1v,
         nrow=3,
         ncol=1,
         byrow=TRUE)
print(x)
print(x1)
print('=p+x3*q')
cat('geometrically the solution set is the line through [', x ,'] parallel to [',x1,']')