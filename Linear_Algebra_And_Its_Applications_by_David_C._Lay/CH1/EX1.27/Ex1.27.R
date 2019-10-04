#Chapter 1 - Linear Equations In Linear Algebra
#Matrix of a linear transformation
#Page No.50 / 1-38
#Prob 7
#1.9.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

e1v<-c(-1/sqrt(2),-1/sqrt(2))
e1=matrix(e1v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
print('e1')
print(e1)
e1[2]=e1[2]*-1
print('->')
print(e1)

e2v<-c(1/sqrt(2),-1/sqrt(2))
e2=matrix(e2v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
print('e2')
print(e2)
e2[2]=e2[2]*-1
print('->')
print(e2)
A=cbind(e1,e2)
print('A')
print(A)