# Example : 2.5A   Chapter : 2.5   Pageno : 87
# Inverse of difference matrix is Sum matrix
A<-matrix(c(1,-1,0,0,1,-1,0,0,1),ncol=3)
A1<-solve(A)
print("Inverse of the difference matrix is singular ")
print(A1)
