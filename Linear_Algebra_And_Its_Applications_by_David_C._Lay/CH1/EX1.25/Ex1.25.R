#Chapter 1 - Linear Equations In Linear Algebra
#Introduction to Linear Transformations
#Page No.47 / 1-35
#Prob 19
#1.8.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

m1v<-c(2,5)
m2v<-c(-1,6)
m1=matrix(m1v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
print(m1)
m2=matrix(m2v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
print(m2)
print('5y1-3y2=')
tm=5*m1-3*m2
print(tm)