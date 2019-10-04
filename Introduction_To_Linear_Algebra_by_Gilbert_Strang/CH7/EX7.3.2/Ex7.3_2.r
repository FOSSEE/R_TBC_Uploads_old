# Example : 2   Chapter : 7.3     Page No: 401
# Similar Projection Matrices
A<-matrix(c(0.5,-0.5,-0.5,0.5),ncol=2)
Aev<-eigen(A)$values
W<-matrix(c(2,0,1,1),ncol=2)
W1<-solve(W)
B<-W1%*%A%*%W
print("Matrix B = W-1 * A * W")
print(B)
Bev<-eigen(B)$values
print("A and B are similar matrices")
print(Aev)
print(Bev)