# Example : 3   Chapter : 5.3     Page No: 271
# The inverse of the traingular matrix is traingular
A<-matrix(c(1,1,1,1,0,1,1,1,0,0,1,1,0,0,0,1),ncol=4)
A1<-solve(A)
print("The inverse of A is")
print(A1)