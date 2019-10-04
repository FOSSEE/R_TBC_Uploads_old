#Chapter 3- Determinants
#Determinant of a matrix
#Page No.108 / 3-2
#Prob 13
#3.1.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
Av<-c(4,0,-7,3,-5,0,0,2,0,0,7,3,-6,4,-8,5,0,5,2,-3,0,0,9,-1,2)
A=matrix(Av,5,5,TRUE)
print('A=')
print(A)
P=A
print('since row 2 has maximum zeros, using row 2 for cofactor expression')
A<-A[-(2),]
A<-A[,-(3)]
print('deleting second row and third column from A, we get')
print(A)
print('det(A)=-2 X')
print('det')
print(A)
print('for the 4X4 matrix obtained, using column 2 for cofactor exansion')
print('deleting second column and row from the 4X4 matrix')
A<-A[-(2),]
A<-A[,-(2)]
print(A)
print('det(A)=-2 X 3 X')
print('det')
print(A)
print('-6 X [4 X (4-3)-5 X (6-5)]')
print('=')
print(-6*det(A))