#Chapter 4- Vector Spaces
#Change of Basis
#Page No.146 / 4-26
#Prob 13
#4.7.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

b1c=matrix(c(1,-2,1),3,1,TRUE)
b2c=matrix(c(3,-5,4),3,1,TRUE)
b3c=matrix(c(0,2,3),3,1,TRUE)
print('b1c')
print(b1c)
print('b2c')
print(b2c)
print('b3c')
print(b3c)
pcb=cbind(b1c,b2c,b3c)
print(pcb)
print('coordinate vector [-1+2t]B satisfies')
print('pcb [-1+2t]B = [-1+2t]C')
print('=[-1 2 0]')
nm=matrix(c(-1,2,0),3,1,TRUE)
cvm=cbind(pcb,nm)
print(cvm)
cvm[2,]=cvm[2,]+2*cvm[1,]
cvm[3,]=cvm[3,]-1*cvm[1,]
cvm[3,]=cvm[3,]-1*cvm[2,]
cvm[2,]=cvm[2,]-2*cvm[3,]
cvm[1,]=cvm[1,]-3*cvm[2,]
print(cvm)
print('[-1+2t]B = ')
print(cvm[,4])