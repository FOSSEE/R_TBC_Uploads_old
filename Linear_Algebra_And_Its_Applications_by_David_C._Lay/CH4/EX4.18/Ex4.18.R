#Chapter 4- Vector Spaces
#Change of Basis
#Page No.150 / 4-30
#Prob 19b
#4.8.19b
#(this solution is for Section 4.7)

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

vv<-c(-2,-8,-7,2,5,2,3,2,6)
v=matrix(vv,3,3,TRUE)
print(v)
pv<-c(5,8,5,-3,-5,-3,-2,-2,-1)
pinv=matrix(pv,3,3,TRUE)
print(pinv)
w= v %*% pinv
print(w)
w1=w[,1]
w2=w[,2]
w3=w[,3]
print(w1)
print(w2)
print(w3)