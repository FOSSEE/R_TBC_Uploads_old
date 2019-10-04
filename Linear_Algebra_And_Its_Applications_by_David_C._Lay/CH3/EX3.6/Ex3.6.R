#Chapter 3- Determinants
#Determinant of a matrix
#Page No.111 / 3-5
#Prob 7
#3.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
Av<-c(1,3,0,2,-2,-5,7,4,3,5,2,1,1,-1,2,-3)
A=matrix(Av,4,4,TRUE)
print('A=')
print(A)
print('performing row operations')
A[2,]=A[2,]-(A[2,1]/A[1,1])*A[1,]
A[3,]=A[3,]-(A[3,1]/A[1,1])*A[1,]
A[4,]=A[4,]-(A[4,1]/A[1,1])*A[1,]
print(A)
A[3,]=A[3,]-(A[3,2]/A[2,2])*A[2,]
A[4,]=A[4,]-(A[4,2]/A[2,2])*A[2,]
print(A)
A[4,]=A[4,]-(A[4,3]/A[3,3])*A[3,]
print(A)
print('det(A) is the product of diagonal entries')
print('det(A)=')
print(det(A))