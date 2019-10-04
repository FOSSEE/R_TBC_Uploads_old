#Chapter 4- Vector Spaces
#Change of Basis
#Page No.153 / 4-33
#Prob 7
#4.9.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

pv<-c(.7,.1,.1,.2,.8,.2,.1,.1,.7)
p=matrix(pv,3,3,TRUE)
print(p)
PI=p-diag(3)
print(PI)
zm=matrix(0,3,1,TRUE)
PIx=cbind(PI,zm)
print(PIx)
PIx[,c(1,3)]=PIx[,c(3,1)]
print(PIx)
PIx=PIx*10
print(PIx)
PIx[2,]=PIx[2,]-2*PIx[1,]
PIx[3,]=PIx[3,]+3*PIx[1,]
PIx[2,]=PIx[2,]/(-4)
PIx[3,]=PIx[3,]-4*PIx[2,]
PIx[1,]=PIx[1,]-1*PIx[2,]
print(round(PIx))
print('x1=x3')
print('x2=2x3')
print('x3 is free')
print('[x1 x2 x3]=x3[1 2 1]')
print('the entries in [1 2 1] sum to 4')
q=(1/4)*matrix(c(1,2,1),3,1,TRUE)
print(q)