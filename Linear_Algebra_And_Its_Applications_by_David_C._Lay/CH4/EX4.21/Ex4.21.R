#Chapter 4- Vector Spaces
#Change of Basis
#Page No.154 / 4-34
#Prob 13a
#4.9.13a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

P=matrix(c(.95,.45,.05,.55),2,2,TRUE)
print(P)
PI=P-diag(2)
print(PI)
zm=matrix(0,2,1,TRUE)
PIm=cbind(PI,zm)
print(PIm)
PIm[2,]=round(PIm[2,]+PIm[1,])
PIm[1,]=PIm[1,]*20
print(PIm)
print('x1=9x2')
print('x2 is free')
print('A basis for Nul(P-I) is [9 1]')
print('the steady-state vector is q=[.9 .1]')