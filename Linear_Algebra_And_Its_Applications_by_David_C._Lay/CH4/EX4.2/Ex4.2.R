#Chapter 4- Vector Spaces
#Null space of a matrix
#Page No.125 / 4-5
#Prob 1
#4.2.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(3,-5,-3,6,-2,0,-8,4,1)
a=matrix(av,3,3,TRUE)
print('A=')
print(a)
print('the vector x is:')
x=matrix(c(1,3,-4),3,1,TRUE)
print('x=')
print(x)
print('To check if x is in nullspace of A')
print('Ax=')
zm=matrix(0,3,1,TRUE)
print('=')
print(zm)
print('hence, x is in the null space of A')