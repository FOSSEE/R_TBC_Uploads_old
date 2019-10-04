#Chapter 4- Vector Spaces
#Change of Basis
#Page No.145 / 4-25
#Prob 1a
#4.7.1a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

b1=matrix(c(6,-2),2,1,TRUE)
print(b1)
b2=matrix(c(9,-4),2,1,TRUE)
print(b2)
pcb=cbind(b1,b2)
print(pcb)

#4.7.1b
xb=matrix(c(-3,2),2,1,TRUE)
print(xb)
xc=pcb %*% xb
print(xc)