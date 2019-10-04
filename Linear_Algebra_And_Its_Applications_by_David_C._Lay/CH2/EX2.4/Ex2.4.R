#Chapter 2- Matrix Algebra
#Matrix
#Page No.70 / 2-8
#Prob 31
#2.2.31

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(1,0,-2,-3,1,4,2,-3,4)
a=matrix(av,3,3,TRUE)
i=diag(3)
ai=cbind(a,i)
print(ai)
ai[2,]=ai[2,]+3*ai[1,]
print(ai)
ai[3,]=ai[3,]-2*ai[1,]
print(ai)
ai[3,]=ai[3,]+3*ai[2,]
print(ai)
ai[1,]=ai[1,]+ai[3,]
print(ai)
ai[2,]=ai[2,]+ai[3,]
print(ai)
ai[3,]=ai[3,]/2
print(ai)
print('A^-1')
print(ai[,c(4,5,6)])