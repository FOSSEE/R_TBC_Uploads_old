#Chapter 1 - Linear Equations In Linear Algebra
#Matrix of a linear transformation
#Page No.50 / 1-38
#Prob 1
#1.9.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

te1v<-c(3,1,3,1)
te2v<-c(-5,2,0,0)
te1=matrix(te1v,
           nrow=4,
           ncol=1,
           byrow=TRUE)
print(te1)
te2=matrix(te2v,
           nrow=4,
           ncol=1,
           byrow=TRUE)
print(te2)
A=cbind(te1,te2)
print(A)