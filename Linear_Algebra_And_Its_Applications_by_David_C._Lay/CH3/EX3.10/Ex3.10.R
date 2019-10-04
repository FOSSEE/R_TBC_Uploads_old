#Chapter 3- Determinants
#Cramers Rule
#Page No.115 / 3-9
#Prob 1
#3.3.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the co-efficient matrix is:')
av<-c(5,7,2,4)
a=matrix(av,2,2,TRUE)
print('A=')
print(a)
print('the RHS is:')
b=matrix(c(3,1),2,1,TRUE)
print(b)
print('applying cramers rule')
print('replacing first column of matrix A by b')
A1v<-c(3,7,1,4)
A1=matrix(A1v,2,2,TRUE)
print('A1=')
print(A1)
print('replacing second column of matrix A by b')
A2v<-c(5,3,2,1)
A2=matrix(A2v,2,2,TRUE)
print('A2=')
print(A2)
print('x1=det(A1)/det(A)')
print('=')
print((det(A1)/det(a)))
print('x2=det(A2)/det(A)')
print('=')
print((det(A2)/det(a)))