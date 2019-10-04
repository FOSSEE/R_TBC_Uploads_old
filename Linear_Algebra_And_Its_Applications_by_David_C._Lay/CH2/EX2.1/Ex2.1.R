#Chapter 2- Matrix Algebra
#Matrix operations
#Page No.64 / 2-2
#Prob 1
#2.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(2,0,-1,4,-5,2)
a=matrix(av,2,3,TRUE)
print('A=')
print(a)
print('-2A=')
print(-2*a)
print('matrix B')
bv<-c(7,-5,1,1,-4,-3)
b=matrix(bv,2,3,TRUE)
print(b)
print('B-2A')
print(b-2*a)
c=matrix(c(1,2,-2,1),2,2,TRUE)
d=matrix(c(3,5,-1,4),2,2,TRUE)
cd=c %*% d
print('CD')
print(cd)