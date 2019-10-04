# Example : 5   Chapter : 8.3     Page No: 437
# Linear Algebra in Economy
A<-matrix(c(0,1,4,0),ncol=2)
lambda<-eigen(A)$values
print("Lambda max is ")
print(lambda[1])
I<-matrix(c(1,0,0,1),ncol=2)
A1<-solve(I-A)
print(A1)
#The answers may vary due to rounding off values
