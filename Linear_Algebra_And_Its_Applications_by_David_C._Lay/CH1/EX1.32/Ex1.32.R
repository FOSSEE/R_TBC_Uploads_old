#Chapter 1 - Linear Equations In Linear Algebra
#Supplementary Exercises
#Page No.58 / 1-46
#Prob 7a
#7a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

v1v<-c(2,-5,7)
v2v<-c(-4,1,-5)
v3v<-c(-2,1,-3)

v1=matrix(v1v,3,1,TRUE)
v2=matrix(v2v,3,1,TRUE)
v3=matrix(v3v,3,1,TRUE)
print('v1')
print(v1)
print('v2')
print(v2)
print('v3')
print(v3)
R=cbind(v1,v2,v3)
print(R)
R[1,]=R[1,]/2
print('~')
print(R)
Rnv<-c(1,-2,-1,0,-9,-4,0,9,4)
Rn=matrix(Rnv,3,3,TRUE)
print('~')
print(Rn)
Rnv<-c(1,-2,-1,0,-9,-4,0,0,0)
Rn=matrix(Rnv,3,3,TRUE)
print('~')
print(Rn)