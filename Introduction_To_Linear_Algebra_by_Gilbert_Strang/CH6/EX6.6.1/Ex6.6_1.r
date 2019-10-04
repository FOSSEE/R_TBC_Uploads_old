# Example : 1   Chapter : 6.6     Page No: 356
# Similar matrices are matrices with same eigen values
A<-matrix(c(0.5,0.5,0.5,0.5),ncol=2)
Aev<-eigen(A)$values
print("Eigen values of A ")
print(Aev)
Lambda<-matrix(c(1,0,0,0),ncol=2)
Lev<-eigen(Lambda)$values
print("eigen values of lambda matrix")
print(Lev)
M<-matrix(c(1,1,0,2),ncol=2)
M1<-solve(M)
M1AM<-M1%*%A%*%M
M1AMev<-eigen(M1AM)$values
print("EIgen values of M-1*A*M")
print(M1AMev)
print("A and M-1*A*M are similar matrices")