#Chapter 2- Matrix Algebra
#Invertible matrix theorem
#Page No.74 / 2-12
#Prob 33
#2.3.33

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('matrix A corresponding to transformation T is:')
Av<-c(-5,9,4,-7)
A=matrix(Av,2,2,TRUE)
print(A)
print('determinant of A is:')
print(det(A))
print('since det(A) is not equal to zero')
print('by IMT, A is invertible')
print('hence, the inverse of A exists')
print('inverse of A is:')
print(solve(A))