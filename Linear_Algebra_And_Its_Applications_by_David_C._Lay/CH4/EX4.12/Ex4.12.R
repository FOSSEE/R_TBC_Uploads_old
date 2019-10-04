#Chapter 4- Vector Spaces
#Change of Basis
#Page No.145 / 4-25
#Prob 7
#4.7.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

c1=matrix(c(1,-5),2,1,TRUE)
c2=matrix(c(-2,2),2,1,TRUE)
b1=matrix(c(7,5),2,1,TRUE)
b2=matrix(c(-3,-1),2,1,TRUE)
m=cbind(c1,c2,b1,b2)
print(m)
m[2,]=m[2,]+5*m[1,]
print(m)
m[2,]=m[2,]/8
m[2,]=m[2,]/-1
print(m)
m[1,]=m[1,]+2*m[2,]
print(m)
pcb=m[,3:4]
print(pcb)
print('inv(pcb)')
print(solve(pcb))