#Chapter 2- Matrix Algebra
#R3 coordinates of matrix
#Page No.94 / 2-32
#Prob 19
#2.7.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

Pv<-c(1,0,0,0,0,1,0,0,0,0,0,0,0,0,-0.1,1)
P=matrix(Pv,4,4,TRUE)
print(P)
Dv<-c(4.2,6,2,1.2,4,2,4,2,6,1,1,1)
D=matrix(Dv,4,3,TRUE)
print(D)
PD=P %*% D
print('PD')
print(PD)
R3=matrix(0,3,3,TRUE)
R31=PD[1:3,1]/PD[4,1]
R32=PD[1:3,2]/PD[4,2]
R33=PD[1:3,3]/PD[4,3]
R3=cbind(R31,R32,R33)
print(R3)