#Chapter 2- Matrix Algebra
#Column space of a matrix
#Page No.95 / 2-33
#Prob 7c
#2.8.7c

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
Av<-c(2,-3,-4,-8,8,6,6,-7,-7)
A=matrix(Av,3,3,TRUE)
print('A=')
print(A)
print('the given vector is:')
p=matrix(c(6,-10,11),3,1,TRUE)
print('p=')
print(p)
print('combining A and p')
b=cbind(A,p)
print(b)
print('performing row operations')
b[2,]=b[2,]-(b[2,1]/b[1,1])*b[1,]
b[3,]=b[3,]-(b[3,1]/b[1,1])*b[1,]
print(b)
b[3,]=b[3,]-(b[3,2]/b[2,2])*b[2,]
print(b)
if(b[3,3]==0 & b[3,4]==0){
  print('p lies in column space of A')
}else{
  print('p does not lie in column space of A')
}