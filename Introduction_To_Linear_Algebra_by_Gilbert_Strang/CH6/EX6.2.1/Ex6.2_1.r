# Example : 1   Chapter : 6.2     Page No: 299
# Diagonilizing a Matrix and Power of matrix computed from power of its diagonal matrix
A<-matrix(c(1,0,5,6),ncol=2)
lambda<-eigen(A)$values
S<-eigen(A)$vectors
S<-round(S)
S1<-solve(S)
Diag_matrix<-round(S1%*%A%*%S)
print("Diagonal Matrix is ")
print(Diag_matrix)
A2<-A%*%A
print("The square of matrix")
print(A2)
print("The Power of matrix can also be computed from its diagonal matrix as follows")
A2_diag<-S%*%Diag_matrix%*%Diag_matrix%*%S1
print("The square of matrix computed from its diagonal matrix")
print(A2_diag)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0