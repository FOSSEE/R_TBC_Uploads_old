#Chapter 4- Vector Spaces
#Change of Basis
#Page No.146 / 4-26
#Prob 19a
#4.7.19a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

vv<-c(-2,-8,-7,2,5,2,3,2,6)
pv<-c(1,2,-1,-3,-5,0,4,6,1)
v=matrix(vv,3,3,TRUE)
p=matrix(pv,3,3,TRUE)
print(v)
print(p)
vp=v %*% p
print(vp)
u1=vp[,1]
u2=vp[,2]
u3=vp[,3]
print('u1')
print(u1)
print('u2')
print(u2)
print('u3')
print(u3)