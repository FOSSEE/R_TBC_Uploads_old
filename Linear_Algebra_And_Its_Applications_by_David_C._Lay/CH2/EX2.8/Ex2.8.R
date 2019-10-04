#Chapter 2- Matrix Algebra
#Inverse using matrix partition
#Page No.81 / 2-19
#Prob 25
#2.4.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix is:')
av<-c(1,2,0,0,0,3,5,0,0,0,0,0,2,0,0,0,0,0,7,8,0,0,0,5,6)
a=matrix(av,5,5,TRUE)
print(a)
print('partitioning the matrix into 4 submatrices')
A11=rbind(a[1,1:2],a[2,1:2])
print('A11=')
print(A11)
A22=rbind(a[3,3:5],a[4,3:5],a[5,3:5])
print('A22=')
print(A22)
A12=matrix(0,2,3,TRUE)
print('A12=')
print(A12)
A21=matrix(0,3,2,TRUE)
print('A21=')
print(A21)
print('partitioning A22 into 4 submatrices')
A221=matrix(2,1,1,TRUE)
print(A221)
B=rbind(A22[2,2:3],A22[3,2:3])
print('B=')
print(B)
print(matrix(0,1,2,TRUE))
print(matrix(0,2,1,TRUE))
print('determinant of B=')
print(det(B))
print('Hence, B is invertible')
print('inverse of B is')
print(solve(B))
print('determinant of inverse of  B is:')
print(det(solve(B)))
print('inverse of A11')
print(solve(A11))
print('hence the inverse of A22 is:')
v1=det(solve(B))
v2=matrix(0,1,2,TRUE)
v3=matrix(c(0,3,-4),1,3,TRUE)
v4=matrix(c(0,-2.5,3.5),1,3,TRUE)
r1=cbind(v1,v2)
c=rbind(r1,v3,v4)
print(c)